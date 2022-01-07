; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_path.c_mp_path_join_bstr.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_path.c_mp_path_join_bstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstr = type { i32, i8* }

@.str = private unnamed_addr constant [11 x i8] c"%.*s%s%.*s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mp_path_join_bstr(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bstr, align 8
  %8 = alloca %struct.bstr, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = bitcast %struct.bstr* %7 to { i32, i8* }*
  %14 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %13, i32 0, i32 0
  store i32 %1, i32* %14, align 8
  %15 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %13, i32 0, i32 1
  store i8* %2, i8** %15, align 8
  %16 = bitcast %struct.bstr* %8 to { i32, i8* }*
  %17 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %16, i32 0, i32 0
  store i32 %3, i32* %17, align 8
  %18 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %16, i32 0, i32 1
  store i8* %4, i8** %18, align 8
  store i8* %0, i8** %9, align 8
  %19 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast %struct.bstr* %8 to { i32, i8* }*
  %25 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %24, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @bstrdup0(i8* %23, i32 %26, i8* %28)
  store i8* %29, i8** %6, align 8
  br label %91

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i8*, i8** %9, align 8
  %36 = bitcast %struct.bstr* %7 to { i32, i8* }*
  %37 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %36, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i8* @bstrdup0(i8* %35, i32 %38, i8* %40)
  store i8* %41, i8** %6, align 8
  br label %91

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %42
  %53 = load i8*, i8** %9, align 8
  %54 = bitcast %struct.bstr* %8 to { i32, i8* }*
  %55 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %54, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @bstrdup0(i8* %53, i32 %56, i8* %58)
  store i8* %59, i8** %6, align 8
  br label %91

60:                                               ; preds = %42
  %61 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %62, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %70, 47
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %11, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = bitcast %struct.bstr* %7 to { i32, i8* }*
  %75 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %74, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @BSTR_P(i32 %76, i8* %78)
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %84 = bitcast %struct.bstr* %8 to { i32, i8* }*
  %85 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %84, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @BSTR_P(i32 %86, i8* %88)
  %90 = call i8* @talloc_asprintf(i8* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %79, i8* %83, i32 %89)
  store i8* %90, i8** %6, align 8
  br label %91

91:                                               ; preds = %60, %52, %34, %22
  %92 = load i8*, i8** %6, align 8
  ret i8* %92
}

declare dso_local i8* @bstrdup0(i8*, i32, i8*) #1

declare dso_local i8* @talloc_asprintf(i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @BSTR_P(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
