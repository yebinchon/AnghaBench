; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_hostsreader.c_hostsreader_get.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_hostsreader.c_hostsreader_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostsreader = type { i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostsreader_get(%struct.hostsreader* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostsreader*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.hostsreader* %0, %struct.hostsreader** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %10

10:                                               ; preds = %3, %24, %64, %96, %128, %137
  %11 = load i8*, i8** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.hostsreader*, %struct.hostsreader** %5, align 8
  %14 = getelementptr inbounds %struct.hostsreader, %struct.hostsreader* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @fgets(i8* %11, i64 %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %138

19:                                               ; preds = %10
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 35
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %10

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %8, align 8
  %27 = load i64, i64* %7, align 8
  store i64 %27, i64* %9, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.hostsreader*, %struct.hostsreader** %5, align 8
  %30 = getelementptr inbounds %struct.hostsreader, %struct.hostsreader* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %46, %25
  %32 = load i8*, i8** %8, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i64 @isspace(i8 signext %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %41, %36, %31
  %45 = phi i1 [ false, %36 ], [ false, %31 ], [ %43, %41 ]
  br i1 %45, label %46, label %51

46:                                               ; preds = %44
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %9, align 8
  br label %31

51:                                               ; preds = %44
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.hostsreader*, %struct.hostsreader** %5, align 8
  %61 = getelementptr inbounds %struct.hostsreader, %struct.hostsreader* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp eq i8* %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %54, %51
  br label %10

65:                                               ; preds = %58
  %66 = load i8*, i8** %8, align 8
  store i8 0, i8* %66, align 1
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %8, align 8
  br label %69

69:                                               ; preds = %84, %65
  %70 = load i8*, i8** %8, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load i8*, i8** %8, align 8
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @isspace(i8 signext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  br label %82

82:                                               ; preds = %79, %74, %69
  %83 = phi i1 [ false, %74 ], [ false, %69 ], [ %81, %79 ]
  br i1 %83, label %84, label %89

84:                                               ; preds = %82
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = add i64 %87, -1
  store i64 %88, i64* %9, align 8
  br label %69

89:                                               ; preds = %82
  %90 = load i64, i64* %9, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i8*, i8** %8, align 8
  %94 = load i8, i8* %93, align 1
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92, %89
  br label %10

97:                                               ; preds = %92
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.hostsreader*, %struct.hostsreader** %5, align 8
  %100 = getelementptr inbounds %struct.hostsreader, %struct.hostsreader* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %116, %97
  %102 = load i8*, i8** %8, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i8*, i8** %8, align 8
  %108 = load i8, i8* %107, align 1
  %109 = call i64 @isspace(i8 signext %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i64, i64* %9, align 8
  %113 = icmp ne i64 %112, 0
  br label %114

114:                                              ; preds = %111, %106, %101
  %115 = phi i1 [ false, %106 ], [ false, %101 ], [ %113, %111 ]
  br i1 %115, label %116, label %121

116:                                              ; preds = %114
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %8, align 8
  %119 = load i64, i64* %9, align 8
  %120 = add i64 %119, -1
  store i64 %120, i64* %9, align 8
  br label %101

121:                                              ; preds = %114
  %122 = load i64, i64* %9, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i8*, i8** %8, align 8
  %126 = load i8, i8* %125, align 1
  %127 = icmp ne i8 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %124, %121
  br label %10

129:                                              ; preds = %124
  %130 = load i8*, i8** %8, align 8
  store i8 0, i8* %130, align 1
  %131 = load %struct.hostsreader*, %struct.hostsreader** %5, align 8
  %132 = getelementptr inbounds %struct.hostsreader, %struct.hostsreader* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i64 @isnumericipv4(i8* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  store i32 1, i32* %4, align 4
  br label %138

137:                                              ; preds = %129
  br label %10

138:                                              ; preds = %136, %18
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @fgets(i8*, i64, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @isnumericipv4(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
