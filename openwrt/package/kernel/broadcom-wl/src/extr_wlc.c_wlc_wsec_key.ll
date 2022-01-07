; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/broadcom-wl/src/extr_wlc.c_wlc_wsec_key.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/broadcom-wl/src/extr_wlc.c_wlc_wsec_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32 }

@PARAM_MODE = common dso_local global i32 0, align 4
@SET = common dso_local global i32 0, align 4
@WL_PRIMARY_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"d:\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"s:\00", align 1
@interface = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"wsec_key\00", align 1
@vif = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @wlc_wsec_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_wsec_key(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [3 x i8], align 1
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PARAM_MODE, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @SET, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %127

20:                                               ; preds = %3
  %21 = call i32 @memset(%struct.TYPE_4__* %8, i32 0, i32 24)
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 61
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32, i32* @WL_PRIMARY_KEY, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %9, align 8
  br label %32

32:                                               ; preds = %27, %20
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp slt i32 %36, 49
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp sgt i32 %42, 52
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp ne i32 %48, 44
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %38, %32
  store i32 -1, i32* %4, align 4
  br label %127

51:                                               ; preds = %44
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  store i8* %53, i8** %10, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i64 @strncmp(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %123

58:                                               ; preds = %51
  %59 = load i8*, i8** %10, align 8
  %60 = call i64 @strncmp(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  store i8* %64, i8** %10, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i8* @strlen(i8* %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %67, i32* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 5
  br i1 %71, label %72, label %77

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 13
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 -1, i32* %4, align 4
  br label %127

77:                                               ; preds = %72, %62
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @strcpy(i8* %79, i8* %80)
  br label %122

82:                                               ; preds = %58
  %83 = load i8*, i8** %10, align 8
  %84 = call i8* @strlen(i8* %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %85, i32* %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 10
  br i1 %89, label %90, label %95

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 26
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 -1, i32* %4, align 4
  br label %127

95:                                               ; preds = %90, %82
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sdiv i32 %97, 2
  store i32 %98, i32* %96, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %11, align 8
  %101 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 2
  store i8 0, i8* %101, align 1
  br label %102

102:                                              ; preds = %116, %95
  %103 = load i8*, i8** %10, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %10, align 8
  %105 = load i8, i8* %103, align 1
  %106 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  store i8 %105, i8* %106, align 1
  %107 = load i8*, i8** %10, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %10, align 8
  %109 = load i8, i8* %107, align 1
  %110 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 1
  store i8 %109, i8* %110, align 1
  %111 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %112 = call i64 @strtoul(i8* %111, i32* null, i32 16)
  %113 = trunc i64 %112 to i8
  %114 = load i8*, i8** %11, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %11, align 8
  store i8 %113, i8* %114, align 1
  br label %116

116:                                              ; preds = %102
  %117 = load i8*, i8** %10, align 8
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %102, label %121

121:                                              ; preds = %116
  br label %122

122:                                              ; preds = %121, %77
  br label %123

123:                                              ; preds = %122, %57
  %124 = load i32, i32* @interface, align 4
  %125 = load i32, i32* @vif, align 4
  %126 = call i32 @wl_bssiovar_set(i32 %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %125, %struct.TYPE_4__* %8, i32 24)
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %123, %94, %76, %50, %19
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @wl_bssiovar_set(i32, i8*, i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
