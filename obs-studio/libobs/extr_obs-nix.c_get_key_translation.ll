; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-nix.c_get_key_translation.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-nix.c_get_key_translation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.dstr = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i32, i32, i32 }

@obs = common dso_local global %struct.TYPE_9__* null, align 8
@KeyPress = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dstr*, i64)* @get_key_translation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_translation(%struct.dstr* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dstr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i32, align 4
  store %struct.dstr* %0, %struct.dstr** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** @obs, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @XGetXCBConnection(i32 %15)
  store i32* %16, i32** %6, align 8
  %17 = bitcast %struct.TYPE_7__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 32, i1 false)
  %18 = load i32, i32* @KeyPress, align 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** @obs, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  store i32 %25, i32* %26, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  store i64 %27, i64* %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @obs, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @root_window(%struct.TYPE_8__* %32, i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %2
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %43 = call i32 @XLookupString(%struct.TYPE_7__* %8, i8* %42, i32 128, i32* null, i32* null)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.dstr*, %struct.dstr** %4, align 8
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @dstr_ncopy(%struct.dstr* %47, i8* %48, i32 %49)
  %51 = load %struct.dstr*, %struct.dstr** %4, align 8
  %52 = call i32 @dstr_to_upper(%struct.dstr* %51)
  store i32 1, i32* %3, align 4
  br label %55

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %2
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %46
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32* @XGetXCBConnection(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @root_window(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @XLookupString(%struct.TYPE_7__*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @dstr_ncopy(%struct.dstr*, i8*, i32) #1

declare dso_local i32 @dstr_to_upper(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
