; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_mainconf_selftest.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_mainconf_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Range = type { i32, i32 }

@__const.mainconf_selftest.test = private unnamed_addr constant [9 x i8] c" test 1 \00", align 1
@.str = private unnamed_addr constant [7 x i8] c"test 1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"-ddd\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"--readscan\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"xxx\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"--something\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"--nothing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mainconf_selftest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [9 x i8], align 1
  %3 = alloca %struct.Range, align 4
  %4 = alloca i32, align 4
  %5 = alloca [6 x i8*], align 16
  %6 = bitcast [9 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.mainconf_selftest.test, i32 0, i32 0), i64 9, i1 false)
  %7 = getelementptr inbounds [9 x i8], [9 x i8]* %2, i64 0, i64 0
  %8 = call i32 @trim(i8* %7, i32 9)
  %9 = getelementptr inbounds [9 x i8], [9 x i8]* %2, i64 0, i64 0
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %50

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct.Range, %struct.Range* %3, i32 0, i32 0
  store i32 16, i32* %14, align 4
  %15 = getelementptr inbounds %struct.Range, %struct.Range* %3, i32 0, i32 1
  store i32 31, i32* %15, align 4
  %16 = bitcast %struct.Range* %3 to i64*
  %17 = load i64, i64* %16, align 4
  %18 = call i32 @count_cidr_bits(i64 %17)
  %19 = icmp ne i32 %18, 28
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 1, i32* %1, align 4
  br label %50

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.Range, %struct.Range* %3, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.Range, %struct.Range* %3, i32 0, i32 1
  store i32 13, i32* %23, align 4
  %24 = bitcast %struct.Range* %3 to i64*
  %25 = load i64, i64* %24, align 4
  %26 = call i32 @count_cidr_bits(i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %1, align 4
  br label %50

29:                                               ; preds = %21
  store i32 6, i32* %4, align 4
  %30 = bitcast [6 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 48, i1 false)
  %31 = bitcast i8* %30 to [6 x i8*]*
  %32 = getelementptr inbounds [6 x i8*], [6 x i8*]* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %32, align 16
  %33 = getelementptr inbounds [6 x i8*], [6 x i8*]* %31, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8** %33, align 8
  %34 = getelementptr inbounds [6 x i8*], [6 x i8*]* %31, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8** %34, align 16
  %35 = getelementptr inbounds [6 x i8*], [6 x i8*]* %31, i32 0, i32 3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8** %35, align 8
  %36 = getelementptr inbounds [6 x i8*], [6 x i8*]* %31, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8** %36, align 16
  %37 = getelementptr inbounds [6 x i8*], [6 x i8*]* %31, i32 0, i32 5
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8** %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i64 0, i64 0
  %40 = call i64 @masscan_conf_contains(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %38, i8** %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  store i32 1, i32* %1, align 4
  br label %50

43:                                               ; preds = %29
  %44 = load i32, i32* %4, align 4
  %45 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i64 0, i64 0
  %46 = call i64 @masscan_conf_contains(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %44, i8** %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  store i32 1, i32* %1, align 4
  br label %50

49:                                               ; preds = %43
  store i32 0, i32* %1, align 4
  br label %50

50:                                               ; preds = %49, %48, %42, %28, %20, %12
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @trim(i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @count_cidr_bits(i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @masscan_conf_contains(i8*, i32, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
