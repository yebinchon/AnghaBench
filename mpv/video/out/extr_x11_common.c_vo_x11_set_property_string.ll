; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_set_property_string.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_set_property_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state* }
%struct.vo_x11_state = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@XStdICCTextStyle = common dso_local global i32 0, align 4
@Success = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, i32, i8*)* @vo_x11_set_property_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vo_x11_set_property_string(%struct.vo* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.vo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vo_x11_state*, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  store %struct.vo* %0, %struct.vo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.vo*, %struct.vo** %4, align 8
  %10 = getelementptr inbounds %struct.vo, %struct.vo* %9, i32 0, i32 0
  %11 = load %struct.vo_x11_state*, %struct.vo_x11_state** %10, align 8
  store %struct.vo_x11_state* %11, %struct.vo_x11_state** %7, align 8
  %12 = bitcast %struct.TYPE_4__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %14 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @XStdICCTextStyle, align 4
  %17 = call i64 @Xutf8TextListToTextProperty(i32 %15, i8** %6, i32 1, i32 %16, %struct.TYPE_4__* %8)
  %18 = load i64, i64* @Success, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %22 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %25 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @XSetTextProperty(i32 %23, i32 %26, %struct.TYPE_4__* %8, i32 %27)
  br label %34

29:                                               ; preds = %3
  %30 = load %struct.vo*, %struct.vo** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @vo_x11_set_property_utf8(%struct.vo* %30, i32 %31, i8* %32)
  br label %34

34:                                               ; preds = %29, %20
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @XFree(i64 %40)
  br label %42

42:                                               ; preds = %38, %34
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @Xutf8TextListToTextProperty(i32, i8**, i32, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @XSetTextProperty(i32, i32, %struct.TYPE_4__*, i32) #2

declare dso_local i32 @vo_x11_set_property_utf8(%struct.vo*, i32, i8*) #2

declare dso_local i32 @XFree(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
