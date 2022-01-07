; ModuleID = '/home/carl/AnghaBench/mongoose/src/extr_mg_uri.c_mg_normalize_uri_path.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/extr_mg_uri.c_mg_normalize_uri_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_normalize_uri_path(%struct.mg_str* %0, %struct.mg_str* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mg_str*, align 8
  %5 = alloca %struct.mg_str*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mg_str, align 8
  store %struct.mg_str* %0, %struct.mg_str** %4, align 8
  store %struct.mg_str* %1, %struct.mg_str** %5, align 8
  %12 = load %struct.mg_str*, %struct.mg_str** %4, align 8
  %13 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.mg_str*, %struct.mg_str** %4, align 8
  %17 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %15, i64 %19
  store i8* %20, i8** %7, align 8
  %21 = load %struct.mg_str*, %struct.mg_str** %5, align 8
  %22 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %8, align 8
  %24 = load %struct.mg_str*, %struct.mg_str** %4, align 8
  %25 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 47
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %2
  %34 = load %struct.mg_str*, %struct.mg_str** %5, align 8
  %35 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %34, i32 0, i32 1
  store i32 0, i32* %35, align 8
  store i32 0, i32* %3, align 4
  br label %122

36:                                               ; preds = %28
  %37 = load i8*, i8** %8, align 8
  store i8* %37, i8** %9, align 8
  br label %38

38:                                               ; preds = %101, %36
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ult i8* %39, %40
  br i1 %41, label %42, label %103

42:                                               ; preds = %38
  %43 = load i8*, i8** %6, align 8
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @parse_uri_component(i8** %10, i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.mg_str* %11)
  %46 = call i64 @mg_vcmp(%struct.mg_str* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %101

49:                                               ; preds = %42
  %50 = call i64 @mg_vcmp(%struct.mg_str* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %83

52:                                               ; preds = %49
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = icmp ugt i8* %53, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 -1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 47
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 -1
  store i8* %65, i8** %9, align 8
  br label %66

66:                                               ; preds = %63, %57, %52
  br label %67

67:                                               ; preds = %79, %66
  %68 = load i8*, i8** %9, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = icmp ugt i8* %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 -1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 47
  br label %77

77:                                               ; preds = %71, %67
  %78 = phi i1 [ false, %67 ], [ %76, %71 ]
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 -1
  store i8* %81, i8** %9, align 8
  br label %67

82:                                               ; preds = %77
  br label %100

83:                                               ; preds = %49
  %84 = load i8*, i8** %9, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32 @memmove(i8* %84, i8* %85, i32 %91)
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 %97
  store i8* %99, i8** %9, align 8
  br label %100

100:                                              ; preds = %83, %82
  br label %101

101:                                              ; preds = %100, %48
  %102 = load i8*, i8** %10, align 8
  store i8* %102, i8** %6, align 8
  br label %38

103:                                              ; preds = %38
  %104 = load i8*, i8** %9, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = icmp eq i8* %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %9, align 8
  store i8 47, i8* %108, align 1
  br label %110

110:                                              ; preds = %107, %103
  %111 = load i8*, i8** %8, align 8
  %112 = load %struct.mg_str*, %struct.mg_str** %5, align 8
  %113 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = trunc i64 %118 to i32
  %120 = load %struct.mg_str*, %struct.mg_str** %5, align 8
  %121 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  store i32 1, i32* %3, align 4
  br label %122

122:                                              ; preds = %110, %33
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @parse_uri_component(i8**, i8*, i8*, %struct.mg_str*) #1

declare dso_local i64 @mg_vcmp(%struct.mg_str*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
