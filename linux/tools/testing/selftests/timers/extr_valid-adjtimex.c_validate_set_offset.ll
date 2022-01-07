; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_valid-adjtimex.c_validate_set_offset.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_valid-adjtimex.c_validate_set_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Testing ADJ_SETOFFSET... \00", align 1
@stdout = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"[OK]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validate_set_offset() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @stdout, align 4
  %4 = call i32 @fflush(i32 %3)
  %5 = load i32, i32* @NSEC_PER_SEC, align 4
  %6 = sub nsw i32 %5, 1
  %7 = call i64 @set_offset(i32 %6, i32 1)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %148

10:                                               ; preds = %0
  %11 = load i32, i32* @NSEC_PER_SEC, align 4
  %12 = sub nsw i32 0, %11
  %13 = add nsw i32 %12, 1
  %14 = call i64 @set_offset(i32 %13, i32 1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 -1, i32* %1, align 4
  br label %148

17:                                               ; preds = %10
  %18 = load i32, i32* @NSEC_PER_SEC, align 4
  %19 = sub nsw i32 0, %18
  %20 = sub nsw i32 %19, 1
  %21 = call i64 @set_offset(i32 %20, i32 1)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 -1, i32* %1, align 4
  br label %148

24:                                               ; preds = %17
  %25 = load i32, i32* @NSEC_PER_SEC, align 4
  %26 = mul nsw i32 5, %25
  %27 = call i64 @set_offset(i32 %26, i32 1)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %1, align 4
  br label %148

30:                                               ; preds = %24
  %31 = load i32, i32* @NSEC_PER_SEC, align 4
  %32 = mul nsw i32 -5, %31
  %33 = call i64 @set_offset(i32 %32, i32 1)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 -1, i32* %1, align 4
  br label %148

36:                                               ; preds = %30
  %37 = load i32, i32* @NSEC_PER_SEC, align 4
  %38 = mul nsw i32 5, %37
  %39 = load i32, i32* @NSEC_PER_SEC, align 4
  %40 = sdiv i32 %39, 2
  %41 = add nsw i32 %38, %40
  %42 = call i64 @set_offset(i32 %41, i32 1)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 -1, i32* %1, align 4
  br label %148

45:                                               ; preds = %36
  %46 = load i32, i32* @NSEC_PER_SEC, align 4
  %47 = mul nsw i32 -5, %46
  %48 = load i32, i32* @NSEC_PER_SEC, align 4
  %49 = sdiv i32 %48, 2
  %50 = sub nsw i32 %47, %49
  %51 = call i64 @set_offset(i32 %50, i32 1)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 -1, i32* %1, align 4
  br label %148

54:                                               ; preds = %45
  %55 = load i32, i32* @USEC_PER_SEC, align 4
  %56 = sub nsw i32 %55, 1
  %57 = call i64 @set_offset(i32 %56, i32 0)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 -1, i32* %1, align 4
  br label %148

60:                                               ; preds = %54
  %61 = load i32, i32* @USEC_PER_SEC, align 4
  %62 = sub nsw i32 0, %61
  %63 = add nsw i32 %62, 1
  %64 = call i64 @set_offset(i32 %63, i32 0)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 -1, i32* %1, align 4
  br label %148

67:                                               ; preds = %60
  %68 = load i32, i32* @USEC_PER_SEC, align 4
  %69 = sub nsw i32 0, %68
  %70 = sub nsw i32 %69, 1
  %71 = call i64 @set_offset(i32 %70, i32 0)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 -1, i32* %1, align 4
  br label %148

74:                                               ; preds = %67
  %75 = load i32, i32* @USEC_PER_SEC, align 4
  %76 = mul nsw i32 5, %75
  %77 = call i64 @set_offset(i32 %76, i32 0)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 -1, i32* %1, align 4
  br label %148

80:                                               ; preds = %74
  %81 = load i32, i32* @USEC_PER_SEC, align 4
  %82 = mul nsw i32 -5, %81
  %83 = call i64 @set_offset(i32 %82, i32 0)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 -1, i32* %1, align 4
  br label %148

86:                                               ; preds = %80
  %87 = load i32, i32* @USEC_PER_SEC, align 4
  %88 = mul nsw i32 5, %87
  %89 = load i32, i32* @USEC_PER_SEC, align 4
  %90 = sdiv i32 %89, 2
  %91 = add nsw i32 %88, %90
  %92 = call i64 @set_offset(i32 %91, i32 0)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  store i32 -1, i32* %1, align 4
  br label %148

95:                                               ; preds = %86
  %96 = load i32, i32* @USEC_PER_SEC, align 4
  %97 = mul nsw i32 -5, %96
  %98 = load i32, i32* @USEC_PER_SEC, align 4
  %99 = sdiv i32 %98, 2
  %100 = sub nsw i32 %97, %99
  %101 = call i64 @set_offset(i32 %100, i32 0)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  store i32 -1, i32* %1, align 4
  br label %148

104:                                              ; preds = %95
  %105 = call i64 @set_bad_offset(i32 0, i32 -1, i32 1)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 -1, i32* %1, align 4
  br label %148

108:                                              ; preds = %104
  %109 = call i64 @set_bad_offset(i32 0, i32 -1, i32 0)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 -1, i32* %1, align 4
  br label %148

112:                                              ; preds = %108
  %113 = load i32, i32* @NSEC_PER_SEC, align 4
  %114 = mul nsw i32 2, %113
  %115 = call i64 @set_bad_offset(i32 0, i32 %114, i32 1)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i32 -1, i32* %1, align 4
  br label %148

118:                                              ; preds = %112
  %119 = load i32, i32* @USEC_PER_SEC, align 4
  %120 = mul nsw i32 2, %119
  %121 = call i64 @set_bad_offset(i32 0, i32 %120, i32 0)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 -1, i32* %1, align 4
  br label %148

124:                                              ; preds = %118
  %125 = load i32, i32* @NSEC_PER_SEC, align 4
  %126 = call i64 @set_bad_offset(i32 0, i32 %125, i32 1)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 -1, i32* %1, align 4
  br label %148

129:                                              ; preds = %124
  %130 = load i32, i32* @USEC_PER_SEC, align 4
  %131 = call i64 @set_bad_offset(i32 0, i32 %130, i32 0)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i32 -1, i32* %1, align 4
  br label %148

134:                                              ; preds = %129
  %135 = load i32, i32* @NSEC_PER_SEC, align 4
  %136 = sub nsw i32 0, %135
  %137 = call i64 @set_bad_offset(i32 0, i32 %136, i32 1)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32 -1, i32* %1, align 4
  br label %148

140:                                              ; preds = %134
  %141 = load i32, i32* @USEC_PER_SEC, align 4
  %142 = sub nsw i32 0, %141
  %143 = call i64 @set_bad_offset(i32 0, i32 %142, i32 0)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  store i32 -1, i32* %1, align 4
  br label %148

146:                                              ; preds = %140
  %147 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %148

148:                                              ; preds = %146, %145, %139, %133, %128, %123, %117, %111, %107, %103, %94, %85, %79, %73, %66, %59, %53, %44, %35, %29, %23, %16, %9
  %149 = load i32, i32* %1, align 4
  ret i32 %149
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @set_offset(i32, i32) #1

declare dso_local i64 @set_bad_offset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
