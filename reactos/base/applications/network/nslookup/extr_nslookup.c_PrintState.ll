; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/nslookup/extr_nslookup.c_PrintState.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/nslookup/extr_nslookup.c_PrintState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32*, i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Default Server:  (null)\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Set options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@State = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"debug\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"defname\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"search\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"recurse\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"d2\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"vc\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"ignoretc\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"  port=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"  type=%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"  class=%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"  timeout=%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"  retry=%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"  root=%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"  domain=%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"MSxfr\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"  IXFRversion=%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"  srchlist=%s\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintState() #0 {
  %1 = call i32 @_T(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (i32, ...) @_tprintf(i32 %1)
  %3 = call i32 @_T(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 (i32, ...) @_tprintf(i32 %3)
  %5 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %6 = call i32 (i32, ...) @_tprintf(i32 %5)
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @State, i32 0, i32 16), align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 (i32, ...) @_tprintf(i32 %10)
  br label %12

12:                                               ; preds = %9, %0
  %13 = call i32 @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %14 = call i32 (i32, ...) @_tprintf(i32 %13)
  %15 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 (i32, ...) @_tprintf(i32 %15)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @State, i32 0, i32 15), align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %21 = call i32 (i32, ...) @_tprintf(i32 %20)
  br label %22

22:                                               ; preds = %19, %12
  %23 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %24 = call i32 (i32, ...) @_tprintf(i32 %23)
  %25 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 (i32, ...) @_tprintf(i32 %25)
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @State, i32 0, i32 14), align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i32 (i32, ...) @_tprintf(i32 %30)
  br label %32

32:                                               ; preds = %29, %22
  %33 = call i32 @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %34 = call i32 (i32, ...) @_tprintf(i32 %33)
  %35 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32 (i32, ...) @_tprintf(i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @State, i32 0, i32 13), align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i32 (i32, ...) @_tprintf(i32 %40)
  br label %42

42:                                               ; preds = %39, %32
  %43 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %44 = call i32 (i32, ...) @_tprintf(i32 %43)
  %45 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 (i32, ...) @_tprintf(i32 %45)
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @State, i32 0, i32 12), align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %51 = call i32 (i32, ...) @_tprintf(i32 %50)
  br label %52

52:                                               ; preds = %49, %42
  %53 = call i32 @_T(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %54 = call i32 (i32, ...) @_tprintf(i32 %53)
  %55 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %56 = call i32 (i32, ...) @_tprintf(i32 %55)
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @State, i32 0, i32 11), align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %61 = call i32 (i32, ...) @_tprintf(i32 %60)
  br label %62

62:                                               ; preds = %59, %52
  %63 = call i32 @_T(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %64 = call i32 (i32, ...) @_tprintf(i32 %63)
  %65 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %66 = call i32 (i32, ...) @_tprintf(i32 %65)
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @State, i32 0, i32 10), align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %71 = call i32 (i32, ...) @_tprintf(i32 %70)
  br label %72

72:                                               ; preds = %69, %62
  %73 = call i32 @_T(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %74 = call i32 (i32, ...) @_tprintf(i32 %73)
  %75 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @State, i32 0, i32 0), align 8
  %77 = call i32 (i32, ...) @_tprintf(i32 %75, i32 %76)
  %78 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @State, i32 0, i32 1), align 4
  %80 = call i32 (i32, ...) @_tprintf(i32 %78, i32 %79)
  %81 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @State, i32 0, i32 2), align 8
  %83 = call i32 (i32, ...) @_tprintf(i32 %81, i32 %82)
  %84 = call i32 @_T(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @State, i32 0, i32 9), align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 (i32, ...) @_tprintf(i32 %84, i32 %86)
  %88 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @State, i32 0, i32 8), align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 (i32, ...) @_tprintf(i32 %88, i32 %90)
  %92 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @State, i32 0, i32 3), align 4
  %94 = call i32 (i32, ...) @_tprintf(i32 %92, i32 %93)
  %95 = call i32 @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @State, i32 0, i32 4), align 8
  %97 = call i32 (i32, ...) @_tprintf(i32 %95, i32 %96)
  %98 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %99 = call i32 (i32, ...) @_tprintf(i32 %98)
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @State, i32 0, i32 7), align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %72
  %103 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %104 = call i32 (i32, ...) @_tprintf(i32 %103)
  br label %105

105:                                              ; preds = %102, %72
  %106 = call i32 @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %107 = call i32 (i32, ...) @_tprintf(i32 %106)
  %108 = call i32 @_T(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @State, i32 0, i32 6), align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 (i32, ...) @_tprintf(i32 %108, i32 %110)
  %112 = call i32 @_T(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %113 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @State, i32 0, i32 5), align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, ...) @_tprintf(i32 %112, i32 %115)
  ret void
}

declare dso_local i32 @_tprintf(i32, ...) #1

declare dso_local i32 @_T(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
