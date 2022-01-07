; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_assemble_uri.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_assemble_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/foo/bar\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"file:///foo/bar\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"/foo/.././bar/baz\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"file:///foo/.././bar/baz\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"file:///bar/baz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_assemble_uri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_assemble_uri() #0 {
  %1 = alloca %struct.mg_str, align 8
  %2 = alloca %struct.mg_str, align 8
  %3 = alloca %struct.mg_str, align 8
  %4 = alloca %struct.mg_str, align 8
  %5 = alloca %struct.mg_str, align 8
  %6 = alloca %struct.mg_str, align 8
  %7 = alloca %struct.mg_str, align 8
  %8 = call i32 @mg_assemble_uri(%struct.mg_str* null, i32* null, i32* null, i32 0, %struct.mg_str* null, i32* null, i32* null, i32 0, %struct.mg_str* %3)
  %9 = call i32 @ASSERT_EQ(i32 %8, i32 0)
  %10 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %3, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @ASSERT_MG_STREQ(i64 %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = call i64 @mg_mk_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %14 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = bitcast %struct.mg_str* %1 to i8*
  %16 = bitcast %struct.mg_str* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = call i64 @mg_mk_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %18 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = bitcast %struct.mg_str* %2 to i8*
  %20 = bitcast %struct.mg_str* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 8, i1 false)
  %21 = call i32 @mg_assemble_uri(%struct.mg_str* %1, i32* null, i32* null, i32 0, %struct.mg_str* %2, i32* null, i32* null, i32 0, %struct.mg_str* %3)
  %22 = call i32 @ASSERT_EQ(i32 %21, i32 0)
  %23 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %3, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @ASSERT_MG_STREQ(i64 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %26 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %3, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @free(i8* %28)
  %30 = call i64 @mg_mk_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %31 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %6, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = bitcast %struct.mg_str* %1 to i8*
  %33 = bitcast %struct.mg_str* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 8, i1 false)
  %34 = call i64 @mg_mk_str(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %35 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = bitcast %struct.mg_str* %2 to i8*
  %37 = bitcast %struct.mg_str* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 8, i1 false)
  %38 = call i32 @mg_assemble_uri(%struct.mg_str* %1, i32* null, i32* null, i32 0, %struct.mg_str* %2, i32* null, i32* null, i32 0, %struct.mg_str* %3)
  %39 = call i32 @ASSERT_EQ(i32 %38, i32 0)
  %40 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %3, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @ASSERT_MG_STREQ(i64 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %43 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %3, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @free(i8* %45)
  %47 = call i32 @mg_assemble_uri(%struct.mg_str* %1, i32* null, i32* null, i32 0, %struct.mg_str* %2, i32* null, i32* null, i32 1, %struct.mg_str* %3)
  %48 = call i32 @ASSERT_EQ(i32 %47, i32 0)
  %49 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %3, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @ASSERT_MG_STREQ(i64 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %52 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %3, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @free(i8* %54)
  ret i8* null
}

declare dso_local i32 @ASSERT_EQ(i32, i32) #1

declare dso_local i32 @mg_assemble_uri(%struct.mg_str*, i32*, i32*, i32, %struct.mg_str*, i32*, i32*, i32, %struct.mg_str*) #1

declare dso_local i32 @ASSERT_MG_STREQ(i64, i8*) #1

declare dso_local i64 @mg_mk_str(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
