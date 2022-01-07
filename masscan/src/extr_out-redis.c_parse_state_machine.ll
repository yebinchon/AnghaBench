; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_out-redis.c_parse_state_machine.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_out-redis.c_parse_state_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"redis: unexpected data: %.*s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"redis: out of sync\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"PONG+\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"redis: unexpected state: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Output*, i8*, i64)* @parse_state_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_state_machine(%struct.Output* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Output*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.Output* %0, %struct.Output** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.Output*, %struct.Output** %5, align 8
  %11 = getelementptr inbounds %struct.Output, %struct.Output* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %144, %3
  %15 = load i32, i32* %9, align 4
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %7, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %147

19:                                               ; preds = %14
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %139 [
    i32 0, label %21
    i32 1, label %43
    i32 2, label %97
    i32 3, label %97
    i32 4, label %97
    i32 6, label %97
    i32 7, label %97
  ]

21:                                               ; preds = %19
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  switch i32 %27, label %30 [
    i32 43, label %28
    i32 58, label %29
  ]

28:                                               ; preds = %21
  store i32 2, i32* %8, align 4
  br label %42

29:                                               ; preds = %21
  store i32 1, i32* %8, align 4
  br label %42

30:                                               ; preds = %21
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = sub i64 %31, %33
  %35 = trunc i64 %34 to i32
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = call i32 (i32, i8*, ...) @LOG(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %39)
  %41 = call i32 @exit(i32 1) #3
  unreachable

42:                                               ; preds = %29, %28
  br label %143

43:                                               ; preds = %19
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @isdigit(i8 zeroext %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 13
  br i1 %58, label %59, label %60

59:                                               ; preds = %51, %43
  br label %96

60:                                               ; preds = %51
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 10
  br i1 %67, label %68, label %83

68:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  %69 = load %struct.Output*, %struct.Output** %5, align 8
  %70 = getelementptr inbounds %struct.Output, %struct.Output* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = call i32 (i32, i8*, ...) @LOG(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %76 = call i32 @exit(i32 1) #3
  unreachable

77:                                               ; preds = %68
  %78 = load %struct.Output*, %struct.Output** %5, align 8
  %79 = getelementptr inbounds %struct.Output, %struct.Output* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %80, align 4
  br label %95

83:                                               ; preds = %60
  %84 = load i64, i64* %7, align 8
  %85 = load i32, i32* %9, align 4
  %86 = zext i32 %85 to i64
  %87 = sub i64 %84, %86
  %88 = trunc i64 %87 to i32
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = call i32 (i32, i8*, ...) @LOG(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %88, i8* %92)
  %94 = call i32 @exit(i32 1) #3
  unreachable

95:                                               ; preds = %77
  br label %96

96:                                               ; preds = %95, %59
  br label %143

97:                                               ; preds = %19, %19, %19, %19, %19
  %98 = load i32, i32* %9, align 4
  %99 = sub i32 %98, 2
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [8 x i8], [8 x i8]* @.str.2, i64 0, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* %9, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %103, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %97
  %112 = load i32, i32* %8, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %8, align 4
  %114 = load i8*, i8** %6, align 8
  %115 = load i32, i32* %9, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp eq i32 %119, 10
  br i1 %120, label %121, label %125

121:                                              ; preds = %111
  %122 = load %struct.Output*, %struct.Output** %5, align 8
  %123 = getelementptr inbounds %struct.Output, %struct.Output* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  store i32 0, i32* %124, align 4
  store i32 1, i32* %4, align 4
  br label %152

125:                                              ; preds = %111
  br label %138

126:                                              ; preds = %97
  %127 = load i64, i64* %7, align 8
  %128 = load i32, i32* %9, align 4
  %129 = zext i32 %128 to i64
  %130 = sub i64 %127, %129
  %131 = trunc i64 %130 to i32
  %132 = load i8*, i8** %6, align 8
  %133 = load i32, i32* %9, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = call i32 (i32, i8*, ...) @LOG(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %131, i8* %135)
  %137 = call i32 @exit(i32 1) #3
  unreachable

138:                                              ; preds = %125
  br label %139

139:                                              ; preds = %19, %138
  %140 = load i32, i32* %8, align 4
  %141 = call i32 (i32, i8*, ...) @LOG(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  %142 = call i32 @exit(i32 1) #3
  unreachable

143:                                              ; preds = %96, %42
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %9, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %14

147:                                              ; preds = %14
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.Output*, %struct.Output** %5, align 8
  %150 = getelementptr inbounds %struct.Output, %struct.Output* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 4
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %147, %121
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @LOG(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
