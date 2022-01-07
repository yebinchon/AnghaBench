; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_check_digest_auth.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_check_digest_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i32, i64 }

@.str = private unnamed_addr constant [15 x i8] c"%[^:]:%[^:]:%s\00", align 1
@LL_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%.*s %s %.*s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_check_digest_auth(i32 %0, i64 %1, i32 %2, i64 %3, i32 %4, i64 %5, %struct.mg_str* byval(%struct.mg_str) align 8 %6, %struct.mg_str* byval(%struct.mg_str) align 8 %7, %struct.mg_str* byval(%struct.mg_str) align 8 %8, %struct.mg_str* byval(%struct.mg_str) align 8 %9, %struct.mg_str* byval(%struct.mg_str) align 8 %10, %struct.mg_str* byval(%struct.mg_str) align 8 %11, i32* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.mg_str, align 8
  %16 = alloca %struct.mg_str, align 8
  %17 = alloca %struct.mg_str, align 8
  %18 = alloca i32*, align 8
  %19 = alloca [128 x i8], align 16
  %20 = alloca [128 x i8], align 16
  %21 = alloca [128 x i8], align 16
  %22 = alloca [128 x i8], align 16
  %23 = alloca [33 x i8], align 16
  %24 = bitcast %struct.mg_str* %15 to { i32, i64 }*
  %25 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %24, i32 0, i32 0
  store i32 %0, i32* %25, align 8
  %26 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %24, i32 0, i32 1
  store i64 %1, i64* %26, align 8
  %27 = bitcast %struct.mg_str* %16 to { i32, i64 }*
  %28 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %27, i32 0, i32 0
  store i32 %2, i32* %28, align 8
  %29 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %27, i32 0, i32 1
  store i64 %3, i64* %29, align 8
  %30 = bitcast %struct.mg_str* %17 to { i32, i64 }*
  %31 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %30, i32 0, i32 0
  store i32 %4, i32* %31, align 8
  %32 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %30, i32 0, i32 1
  store i64 %5, i64* %32, align 8
  store i32* %12, i32** %18, align 8
  br label %33

33:                                               ; preds = %105, %13
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %35 = load i32*, i32** %18, align 8
  %36 = call i32* @fgets(i8* %34, i32 128, i32* %35)
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %106

38:                                               ; preds = %33
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %22, i64 0, i64 0
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %43 = call i32 @sscanf(i8* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %40, i8* %41, i8* %42)
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %105

45:                                               ; preds = %38
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %47 = call i64 @mg_vcmp(%struct.mg_str* %17, i8* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %105

49:                                               ; preds = %45
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %22, i64 0, i64 0
  %51 = call i64 @mg_vcmp(%struct.mg_str* %11, i8* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %105

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %15, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %15, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %16, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %16, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %63 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %64 = call i32 @strlen(i8* %63)
  %65 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %10, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %10, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %9, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %9, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %6, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %6, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %8, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %8, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds [33 x i8], [33 x i8]* %23, i64 0, i64 0
  %82 = call i32 @mg_mkmd5resp(i32 %55, i64 %57, i32 %59, i64 %61, i8* %62, i32 %64, i32 %66, i64 %68, i32 %70, i64 %72, i32 %74, i64 %76, i32 %78, i64 %80, i8* %81)
  %83 = load i32, i32* @LL_DEBUG, align 4
  %84 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %17, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %17, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds [128 x i8], [128 x i8]* %22, i64 0, i64 0
  %90 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds [33 x i8], [33 x i8]* %23, i64 0, i64 0
  %96 = call i32 @LOG(i32 %83, i8* %95)
  %97 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds [33 x i8], [33 x i8]* %23, i64 0, i64 0
  %100 = getelementptr inbounds [33 x i8], [33 x i8]* %23, i64 0, i64 0
  %101 = call i32 @strlen(i8* %100)
  %102 = call i64 @mg_ncasecmp(i32 %98, i8* %99, i32 %101)
  %103 = icmp eq i64 %102, 0
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %14, align 4
  br label %107

105:                                              ; preds = %49, %45, %38
  br label %33

106:                                              ; preds = %33
  store i32 0, i32* %14, align 4
  br label %107

107:                                              ; preds = %106, %53
  %108 = load i32, i32* %14, align 4
  ret i32 %108
}

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @mg_vcmp(%struct.mg_str*, i8*) #1

declare dso_local i32 @mg_mkmd5resp(i32, i64, i32, i64, i8*, i32, i32, i64, i32, i64, i32, i64, i32, i64, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @LOG(i32, i8*) #1

declare dso_local i64 @mg_ncasecmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
