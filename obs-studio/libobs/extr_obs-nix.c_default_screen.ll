; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-nix.c_default_screen.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-nix.c_default_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32*)* @default_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @default_screen(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @XDefaultScreen(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @xcb_get_setup(i32* %13)
  %15 = call { i32*, i64 } @xcb_setup_roots_iterator(i32 %14)
  %16 = bitcast %struct.TYPE_6__* %8 to { i32*, i64 }*
  %17 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %16, i32 0, i32 0
  %18 = extractvalue { i32*, i64 } %15, 0
  store i32* %18, i32** %17, align 8
  %19 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %16, i32 0, i32 1
  %20 = extractvalue { i32*, i64 } %15, 1
  store i64 %20, i64* %19, align 8
  %21 = bitcast %struct.TYPE_6__* %7 to i8*
  %22 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 16, i1 false)
  br label %23

23:                                               ; preds = %34, %2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %6, align 4
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %3, align 8
  br label %37

34:                                               ; preds = %27
  %35 = call i32 @xcb_screen_next(%struct.TYPE_6__* %7)
  br label %23

36:                                               ; preds = %23
  store i32* null, i32** %3, align 8
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32*, i32** %3, align 8
  ret i32* %38
}

declare dso_local i32 @XDefaultScreen(i32) #1

declare dso_local { i32*, i64 } @xcb_setup_roots_iterator(i32) #1

declare dso_local i32 @xcb_get_setup(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xcb_screen_next(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
