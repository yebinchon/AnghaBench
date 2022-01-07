; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_parse4.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_parse4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cidr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cidr* (i8*)* @cidr_parse4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cidr* @cidr_parse4(i8* %0) #0 {
  %2 = alloca %struct.cidr*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.in_addr, align 4
  %7 = alloca %struct.cidr*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %8 = call %struct.cidr* @malloc(i32 24)
  store %struct.cidr* %8, %struct.cidr** %7, align 8
  %9 = load %struct.cidr*, %struct.cidr** %7, align 8
  %10 = icmp ne %struct.cidr* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = sext i32 %13 to i64
  %15 = icmp uge i64 %14, 8
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %1
  br label %117

17:                                               ; preds = %11
  %18 = load %struct.cidr*, %struct.cidr** %7, align 8
  %19 = getelementptr inbounds %struct.cidr, %struct.cidr* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @snprintf(i8* %21, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* @AF_INET, align 4
  %25 = load %struct.cidr*, %struct.cidr** %7, align 8
  %26 = getelementptr inbounds %struct.cidr, %struct.cidr* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.cidr*, %struct.cidr** %7, align 8
  %28 = getelementptr inbounds %struct.cidr, %struct.cidr* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 47)
  store i8* %31, i8** %4, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %86

33:                                               ; preds = %17
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %4, align 8
  store i8 0, i8* %34, align 1
  %36 = load i8*, i8** %4, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 46)
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %65

39:                                               ; preds = %33
  %40 = load i32, i32* @AF_INET, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @inet_pton(i32 %40, i8* %41, %struct.in_addr* %6)
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %117

45:                                               ; preds = %39
  %46 = load %struct.cidr*, %struct.cidr** %7, align 8
  %47 = getelementptr inbounds %struct.cidr, %struct.cidr* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  br label %48

48:                                               ; preds = %60, %45
  %49 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 1
  %56 = load %struct.cidr*, %struct.cidr** %7, align 8
  %57 = getelementptr inbounds %struct.cidr, %struct.cidr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %48

64:                                               ; preds = %48
  br label %85

65:                                               ; preds = %33
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @strtoul(i8* %66, i8** %5, i32 10)
  %68 = load %struct.cidr*, %struct.cidr** %7, align 8
  %69 = getelementptr inbounds %struct.cidr, %struct.cidr* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = icmp eq i8* %70, %71
  br i1 %72, label %83, label %73

73:                                               ; preds = %65
  %74 = load i8*, i8** %5, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.cidr*, %struct.cidr** %7, align 8
  %80 = getelementptr inbounds %struct.cidr, %struct.cidr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 32
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %73, %65
  br label %117

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %64
  br label %89

86:                                               ; preds = %17
  %87 = load %struct.cidr*, %struct.cidr** %7, align 8
  %88 = getelementptr inbounds %struct.cidr, %struct.cidr* %87, i32 0, i32 0
  store i32 32, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %85
  %90 = load i8*, i8** %4, align 8
  %91 = load %struct.cidr*, %struct.cidr** %7, align 8
  %92 = getelementptr inbounds %struct.cidr, %struct.cidr* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = icmp eq i8* %90, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %89
  %98 = load %struct.cidr*, %struct.cidr** %7, align 8
  %99 = getelementptr inbounds %struct.cidr, %struct.cidr* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = call i32 @memset(%struct.in_addr* %100, i32 0, i32 4)
  br label %115

102:                                              ; preds = %89
  %103 = load i32, i32* @AF_INET, align 4
  %104 = load %struct.cidr*, %struct.cidr** %7, align 8
  %105 = getelementptr inbounds %struct.cidr, %struct.cidr* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.cidr*, %struct.cidr** %7, align 8
  %109 = getelementptr inbounds %struct.cidr, %struct.cidr* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = call i32 @inet_pton(i32 %103, i8* %107, %struct.in_addr* %110)
  %112 = icmp ne i32 %111, 1
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  br label %117

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %114, %97
  %116 = load %struct.cidr*, %struct.cidr** %7, align 8
  store %struct.cidr* %116, %struct.cidr** %2, align 8
  br label %124

117:                                              ; preds = %113, %83, %44, %16
  %118 = load %struct.cidr*, %struct.cidr** %7, align 8
  %119 = icmp ne %struct.cidr* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load %struct.cidr*, %struct.cidr** %7, align 8
  %122 = call i32 @free(%struct.cidr* %121)
  br label %123

123:                                              ; preds = %120, %117
  store %struct.cidr* null, %struct.cidr** %2, align 8
  br label %124

124:                                              ; preds = %123, %115
  %125 = load %struct.cidr*, %struct.cidr** %2, align 8
  ret %struct.cidr* %125
}

declare dso_local %struct.cidr* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @inet_pton(i32, i8*, %struct.in_addr*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @memset(%struct.in_addr*, i32, i32) #1

declare dso_local i32 @free(%struct.cidr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
