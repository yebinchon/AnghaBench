; ModuleID = '/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_ccgi.c_CGI_add_var.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_ccgi.c_CGI_add_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @CGI_add_var(%struct.TYPE_7__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %4, align 8
  br label %104

17:                                               ; preds = %12
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = add i64 16, %19
  %21 = call i64 @mymalloc(i64 %20)
  %22 = inttoptr i64 %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %8, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @strcpy(i8* %26, i8* %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %30, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call %struct.TYPE_7__* @findvar(%struct.TYPE_7__* %31, i8* %32)
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %9, align 8
  %34 = icmp eq %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %74

35:                                               ; preds = %17
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = add i64 64, %37
  %39 = call i64 @mymalloc(i64 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %9, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strcpy(i8* %44, i8* %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 6
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %53, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 5
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = icmp eq %struct.TYPE_7__* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %35
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %5, align 8
  br label %70

64:                                               ; preds = %35
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 5
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** %69, align 8
  br label %70

70:                                               ; preds = %64, %62
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 4
  store %struct.TYPE_7__* %71, %struct.TYPE_7__** %73, align 8
  br label %84

74:                                               ; preds = %17
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %79, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %74, %70
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  store %struct.TYPE_8__* %85, %struct.TYPE_8__** %87, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %84
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 @free(i8* %96)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %92, %84
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %102, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %103, %struct.TYPE_7__** %4, align 8
  br label %104

104:                                              ; preds = %100, %15
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %105
}

declare dso_local i64 @mymalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.TYPE_7__* @findvar(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
