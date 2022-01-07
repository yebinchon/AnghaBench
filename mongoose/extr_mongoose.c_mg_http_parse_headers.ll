; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_http_parse_headers.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_http_parse_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_message = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.mg_str*, %struct.mg_str* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.mg_str = type { i32, i8* }

@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32, %struct.http_message*)* @mg_http_parse_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mg_http_parse_headers(i8* %0, i8* %1, i32 %2, %struct.http_message* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.http_message*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mg_str*, align 8
  %11 = alloca %struct.mg_str*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.http_message* %3, %struct.http_message** %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %122, %77, %4
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.http_message*, %struct.http_message** %8, align 8
  %15 = getelementptr inbounds %struct.http_message, %struct.http_message* %14, i32 0, i32 3
  %16 = load %struct.mg_str*, %struct.mg_str** %15, align 8
  %17 = call i64 @ARRAY_SIZE(%struct.mg_str* %16)
  %18 = trunc i64 %17 to i32
  %19 = sub nsw i32 %18, 1
  %20 = icmp slt i32 %13, %19
  br i1 %20, label %21, label %125

21:                                               ; preds = %12
  %22 = load %struct.http_message*, %struct.http_message** %8, align 8
  %23 = getelementptr inbounds %struct.http_message, %struct.http_message* %22, i32 0, i32 3
  %24 = load %struct.mg_str*, %struct.mg_str** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %24, i64 %26
  store %struct.mg_str* %27, %struct.mg_str** %10, align 8
  %28 = load %struct.http_message*, %struct.http_message** %8, align 8
  %29 = getelementptr inbounds %struct.http_message, %struct.http_message* %28, i32 0, i32 2
  %30 = load %struct.mg_str*, %struct.mg_str** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %30, i64 %32
  store %struct.mg_str* %33, %struct.mg_str** %11, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.mg_str*, %struct.mg_str** %10, align 8
  %37 = call i8* @mg_skip(i8* %34, i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.mg_str* %36)
  store i8* %37, i8** %5, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.mg_str*, %struct.mg_str** %11, align 8
  %41 = call i8* @mg_skip(i8* %38, i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.mg_str* %40)
  store i8* %41, i8** %5, align 8
  br label %42

42:                                               ; preds = %62, %21
  %43 = load %struct.mg_str*, %struct.mg_str** %11, align 8
  %44 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.mg_str*, %struct.mg_str** %11, align 8
  %49 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.mg_str*, %struct.mg_str** %11, align 8
  %52 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %50, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 32
  br label %60

60:                                               ; preds = %47, %42
  %61 = phi i1 [ false, %42 ], [ %59, %47 ]
  br i1 %61, label %62, label %67

62:                                               ; preds = %60
  %63 = load %struct.mg_str*, %struct.mg_str** %11, align 8
  %64 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 8
  br label %42

67:                                               ; preds = %60
  %68 = load %struct.mg_str*, %struct.mg_str** %10, align 8
  %69 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.mg_str*, %struct.mg_str** %11, align 8
  %74 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %12

78:                                               ; preds = %72, %67
  %79 = load %struct.mg_str*, %struct.mg_str** %10, align 8
  %80 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load %struct.mg_str*, %struct.mg_str** %11, align 8
  %85 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %83, %78
  %89 = load %struct.mg_str*, %struct.mg_str** %11, align 8
  %90 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %89, i32 0, i32 1
  store i8* null, i8** %90, align 8
  %91 = load %struct.mg_str*, %struct.mg_str** %10, align 8
  %92 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %91, i32 0, i32 1
  store i8* null, i8** %92, align 8
  %93 = load %struct.mg_str*, %struct.mg_str** %11, align 8
  %94 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load %struct.mg_str*, %struct.mg_str** %10, align 8
  %96 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  br label %125

97:                                               ; preds = %83
  %98 = load %struct.mg_str*, %struct.mg_str** %10, align 8
  %99 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @mg_ncasecmp(i8* %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 14)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %122, label %103

103:                                              ; preds = %97
  %104 = load %struct.mg_str*, %struct.mg_str** %11, align 8
  %105 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @to64(i8* %106)
  %108 = load %struct.http_message*, %struct.http_message** %8, align 8
  %109 = getelementptr inbounds %struct.http_message, %struct.http_message* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i64 %107, i64* %110, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = load %struct.http_message*, %struct.http_message** %8, align 8
  %114 = getelementptr inbounds %struct.http_message, %struct.http_message* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %112, %116
  %118 = trunc i64 %117 to i32
  %119 = load %struct.http_message*, %struct.http_message** %8, align 8
  %120 = getelementptr inbounds %struct.http_message, %struct.http_message* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  br label %122

122:                                              ; preds = %103, %97
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %12

125:                                              ; preds = %88, %12
  %126 = load i8*, i8** %5, align 8
  ret i8* %126
}

declare dso_local i64 @ARRAY_SIZE(%struct.mg_str*) #1

declare dso_local i8* @mg_skip(i8*, i8*, i8*, %struct.mg_str*) #1

declare dso_local i32 @mg_ncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @to64(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
