; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_argv.c_argv_insert_head__non_empty_argv__head_added.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_argv.c_argv_insert_head__non_empty_argv__head_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv = type { i32, i32* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PATH2 = common dso_local global i32 0, align 4
@PATH1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @argv_insert_head__non_empty_argv__head_added to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @argv_insert_head__non_empty_argv__head_added(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.argv, align 8
  %4 = alloca %struct.argv, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.argv, align 8
  store i8** %0, i8*** %2, align 8
  %7 = call { i32, i32* } (...) @argv_new()
  %8 = bitcast %struct.argv* %3 to { i32, i32* }*
  %9 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %8, i32 0, i32 0
  %10 = extractvalue { i32, i32* } %7, 0
  store i32 %10, i32* %9, align 8
  %11 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %8, i32 0, i32 1
  %12 = extractvalue { i32, i32* } %7, 1
  store i32* %12, i32** %11, align 8
  %13 = load i32, i32* @PATH2, align 4
  %14 = call i32 @argv_printf(%struct.argv* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @PATH1, align 4
  %16 = call { i32, i32* } @argv_insert_head(%struct.argv* %3, i32 %15)
  %17 = bitcast %struct.argv* %6 to { i32, i32* }*
  %18 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %17, i32 0, i32 0
  %19 = extractvalue { i32, i32* } %16, 0
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %17, i32 0, i32 1
  %21 = extractvalue { i32, i32* } %16, 1
  store i32* %21, i32** %20, align 8
  %22 = bitcast %struct.argv* %4 to i8*
  %23 = bitcast %struct.argv* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false)
  %24 = getelementptr inbounds %struct.argv, %struct.argv* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.argv, %struct.argv* %3, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  %29 = call i32 @assert_int_equal(i32 %25, i32 %28)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %63, %1
  %31 = load i32, i32* %5, align 4
  %32 = getelementptr inbounds %struct.argv, %struct.argv* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %66

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.argv, %struct.argv* %4, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PATH1, align 4
  %46 = call i32 @assert_string_equal(i32 %44, i32 %45)
  br label %62

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.argv, %struct.argv* %4, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.argv, %struct.argv* %3, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @assert_string_equal(i32 %53, i32 %60)
  br label %62

62:                                               ; preds = %47, %38
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %30

66:                                               ; preds = %30
  %67 = call i32 @argv_reset(%struct.argv* %4)
  %68 = call i32 @argv_reset(%struct.argv* %3)
  ret void
}

declare dso_local { i32, i32* } @argv_new(...) #1

declare dso_local i32 @argv_printf(%struct.argv*, i8*, i32) #1

declare dso_local { i32, i32* } @argv_insert_head(%struct.argv*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert_int_equal(i32, i32) #1

declare dso_local i32 @assert_string_equal(i32, i32) #1

declare dso_local i32 @argv_reset(%struct.argv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
