; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_split_subconf.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_split_subconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c":=,\\%\22'[]\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*)* @split_subconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_subconf(%struct.mp_log* %0, i32 %1, %struct.TYPE_10__* %2, %struct.TYPE_10__* %3, %struct.TYPE_10__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 4
  %8 = alloca %struct.mp_log*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__, align 4
  %13 = alloca %struct.TYPE_10__, align 4
  %14 = alloca %struct.TYPE_10__, align 4
  %15 = alloca i32, align 4
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i32 %1, i32* %16, align 4
  store %struct.mp_log* %0, %struct.mp_log** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %11, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %18 = bitcast %struct.TYPE_10__* %12 to i8*
  %19 = bitcast %struct.TYPE_10__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = bitcast %struct.TYPE_10__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @read_subparam(%struct.mp_log* %21, i32 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %12, %struct.TYPE_10__* %14)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %6, align 4
  br label %52

29:                                               ; preds = %5
  %30 = call i64 @bstr_eatstart0(%struct.TYPE_10__* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @read_subparam(%struct.mp_log* %33, i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %12, %struct.TYPE_10__* %13)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %6, align 4
  br label %52

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %29
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = bitcast %struct.TYPE_10__* %43 to i8*
  %45 = bitcast %struct.TYPE_10__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %47 = bitcast %struct.TYPE_10__* %46 to i8*
  %48 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %50 = bitcast %struct.TYPE_10__* %49 to i8*
  %51 = bitcast %struct.TYPE_10__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %42, %39, %27
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @read_subparam(%struct.mp_log*, i32, i8*, %struct.TYPE_10__*, %struct.TYPE_10__*) #2

declare dso_local i64 @bstr_eatstart0(%struct.TYPE_10__*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
