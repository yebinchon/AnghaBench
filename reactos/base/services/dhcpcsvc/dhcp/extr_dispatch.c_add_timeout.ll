; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dispatch.c_add_timeout.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dispatch.c_add_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeout = type { void (i8*)*, i8*, i64, %struct.timeout* }

@MID_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Adding timeout %x %p %x\0A\00", align 1
@timeouts = common dso_local global %struct.timeout* null, align 8
@free_timeouts = common dso_local global %struct.timeout* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Can't allocate timeout structure!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_timeout(i64 %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timeout*, align 8
  %8 = alloca %struct.timeout*, align 8
  store i64 %0, i64* %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @MID_TRACE, align 4
  %10 = load i64, i64* %4, align 8
  %11 = load void (i8*)*, void (i8*)** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @DH_DbgPrint(i32 %9, i8* %12)
  store %struct.timeout* null, %struct.timeout** %7, align 8
  %14 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  store %struct.timeout* %14, %struct.timeout** %8, align 8
  br label %15

15:                                               ; preds = %46, %3
  %16 = load %struct.timeout*, %struct.timeout** %8, align 8
  %17 = icmp ne %struct.timeout* %16, null
  br i1 %17, label %18, label %50

18:                                               ; preds = %15
  %19 = load %struct.timeout*, %struct.timeout** %8, align 8
  %20 = getelementptr inbounds %struct.timeout, %struct.timeout* %19, i32 0, i32 0
  %21 = load void (i8*)*, void (i8*)** %20, align 8
  %22 = load void (i8*)*, void (i8*)** %5, align 8
  %23 = icmp eq void (i8*)* %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %18
  %25 = load %struct.timeout*, %struct.timeout** %8, align 8
  %26 = getelementptr inbounds %struct.timeout, %struct.timeout* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.timeout*, %struct.timeout** %7, align 8
  %32 = icmp ne %struct.timeout* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.timeout*, %struct.timeout** %8, align 8
  %35 = getelementptr inbounds %struct.timeout, %struct.timeout* %34, i32 0, i32 3
  %36 = load %struct.timeout*, %struct.timeout** %35, align 8
  %37 = load %struct.timeout*, %struct.timeout** %7, align 8
  %38 = getelementptr inbounds %struct.timeout, %struct.timeout* %37, i32 0, i32 3
  store %struct.timeout* %36, %struct.timeout** %38, align 8
  br label %43

39:                                               ; preds = %30
  %40 = load %struct.timeout*, %struct.timeout** %8, align 8
  %41 = getelementptr inbounds %struct.timeout, %struct.timeout* %40, i32 0, i32 3
  %42 = load %struct.timeout*, %struct.timeout** %41, align 8
  store %struct.timeout* %42, %struct.timeout** @timeouts, align 8
  br label %43

43:                                               ; preds = %39, %33
  br label %50

44:                                               ; preds = %24, %18
  %45 = load %struct.timeout*, %struct.timeout** %8, align 8
  store %struct.timeout* %45, %struct.timeout** %7, align 8
  br label %46

46:                                               ; preds = %44
  %47 = load %struct.timeout*, %struct.timeout** %8, align 8
  %48 = getelementptr inbounds %struct.timeout, %struct.timeout* %47, i32 0, i32 3
  %49 = load %struct.timeout*, %struct.timeout** %48, align 8
  store %struct.timeout* %49, %struct.timeout** %8, align 8
  br label %15

50:                                               ; preds = %43, %15
  %51 = load %struct.timeout*, %struct.timeout** %8, align 8
  %52 = icmp ne %struct.timeout* %51, null
  br i1 %52, label %81, label %53

53:                                               ; preds = %50
  %54 = load %struct.timeout*, %struct.timeout** @free_timeouts, align 8
  %55 = icmp ne %struct.timeout* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load %struct.timeout*, %struct.timeout** @free_timeouts, align 8
  store %struct.timeout* %57, %struct.timeout** %8, align 8
  %58 = load %struct.timeout*, %struct.timeout** %8, align 8
  %59 = getelementptr inbounds %struct.timeout, %struct.timeout* %58, i32 0, i32 3
  %60 = load %struct.timeout*, %struct.timeout** %59, align 8
  store %struct.timeout* %60, %struct.timeout** @free_timeouts, align 8
  %61 = load void (i8*)*, void (i8*)** %5, align 8
  %62 = load %struct.timeout*, %struct.timeout** %8, align 8
  %63 = getelementptr inbounds %struct.timeout, %struct.timeout* %62, i32 0, i32 0
  store void (i8*)* %61, void (i8*)** %63, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.timeout*, %struct.timeout** %8, align 8
  %66 = getelementptr inbounds %struct.timeout, %struct.timeout* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  br label %80

67:                                               ; preds = %53
  %68 = call %struct.timeout* @malloc(i32 32)
  store %struct.timeout* %68, %struct.timeout** %8, align 8
  %69 = load %struct.timeout*, %struct.timeout** %8, align 8
  %70 = icmp ne %struct.timeout* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %137

73:                                               ; preds = %67
  %74 = load void (i8*)*, void (i8*)** %5, align 8
  %75 = load %struct.timeout*, %struct.timeout** %8, align 8
  %76 = getelementptr inbounds %struct.timeout, %struct.timeout* %75, i32 0, i32 0
  store void (i8*)* %74, void (i8*)** %76, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load %struct.timeout*, %struct.timeout** %8, align 8
  %79 = getelementptr inbounds %struct.timeout, %struct.timeout* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %73, %56
  br label %81

81:                                               ; preds = %80, %50
  %82 = load i64, i64* %4, align 8
  %83 = load %struct.timeout*, %struct.timeout** %8, align 8
  %84 = getelementptr inbounds %struct.timeout, %struct.timeout* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  %85 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  %86 = icmp ne %struct.timeout* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  %89 = getelementptr inbounds %struct.timeout, %struct.timeout* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.timeout*, %struct.timeout** %8, align 8
  %92 = getelementptr inbounds %struct.timeout, %struct.timeout* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %87, %81
  %96 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  %97 = load %struct.timeout*, %struct.timeout** %8, align 8
  %98 = getelementptr inbounds %struct.timeout, %struct.timeout* %97, i32 0, i32 3
  store %struct.timeout* %96, %struct.timeout** %98, align 8
  %99 = load %struct.timeout*, %struct.timeout** %8, align 8
  store %struct.timeout* %99, %struct.timeout** @timeouts, align 8
  br label %137

100:                                              ; preds = %87
  %101 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  store %struct.timeout* %101, %struct.timeout** %7, align 8
  br label %102

102:                                              ; preds = %127, %100
  %103 = load %struct.timeout*, %struct.timeout** %7, align 8
  %104 = getelementptr inbounds %struct.timeout, %struct.timeout* %103, i32 0, i32 3
  %105 = load %struct.timeout*, %struct.timeout** %104, align 8
  %106 = icmp ne %struct.timeout* %105, null
  br i1 %106, label %107, label %131

107:                                              ; preds = %102
  %108 = load %struct.timeout*, %struct.timeout** %7, align 8
  %109 = getelementptr inbounds %struct.timeout, %struct.timeout* %108, i32 0, i32 3
  %110 = load %struct.timeout*, %struct.timeout** %109, align 8
  %111 = getelementptr inbounds %struct.timeout, %struct.timeout* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.timeout*, %struct.timeout** %8, align 8
  %114 = getelementptr inbounds %struct.timeout, %struct.timeout* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp sgt i64 %112, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %107
  %118 = load %struct.timeout*, %struct.timeout** %7, align 8
  %119 = getelementptr inbounds %struct.timeout, %struct.timeout* %118, i32 0, i32 3
  %120 = load %struct.timeout*, %struct.timeout** %119, align 8
  %121 = load %struct.timeout*, %struct.timeout** %8, align 8
  %122 = getelementptr inbounds %struct.timeout, %struct.timeout* %121, i32 0, i32 3
  store %struct.timeout* %120, %struct.timeout** %122, align 8
  %123 = load %struct.timeout*, %struct.timeout** %8, align 8
  %124 = load %struct.timeout*, %struct.timeout** %7, align 8
  %125 = getelementptr inbounds %struct.timeout, %struct.timeout* %124, i32 0, i32 3
  store %struct.timeout* %123, %struct.timeout** %125, align 8
  br label %137

126:                                              ; preds = %107
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.timeout*, %struct.timeout** %7, align 8
  %129 = getelementptr inbounds %struct.timeout, %struct.timeout* %128, i32 0, i32 3
  %130 = load %struct.timeout*, %struct.timeout** %129, align 8
  store %struct.timeout* %130, %struct.timeout** %7, align 8
  br label %102

131:                                              ; preds = %102
  %132 = load %struct.timeout*, %struct.timeout** %8, align 8
  %133 = load %struct.timeout*, %struct.timeout** %7, align 8
  %134 = getelementptr inbounds %struct.timeout, %struct.timeout* %133, i32 0, i32 3
  store %struct.timeout* %132, %struct.timeout** %134, align 8
  %135 = load %struct.timeout*, %struct.timeout** %8, align 8
  %136 = getelementptr inbounds %struct.timeout, %struct.timeout* %135, i32 0, i32 3
  store %struct.timeout* null, %struct.timeout** %136, align 8
  br label %137

137:                                              ; preds = %131, %117, %95, %71
  ret void
}

declare dso_local i32 @DH_DbgPrint(i32, i8*) #1

declare dso_local %struct.timeout* @malloc(i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
