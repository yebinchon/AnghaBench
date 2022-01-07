; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_date.c_ParseDate.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_date.c_ParseDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@nDateFormat = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@awMonths = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ParseDate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseDate(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  store i32* %7, i32** %6, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %2, align 4
  br label %184

13:                                               ; preds = %1
  %14 = call i32 @GetLocalTime(%struct.TYPE_4__* %4)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* @nDateFormat, align 4
  switch i32 %18, label %20 [
    i32 0, label %19
    i32 1, label %49
    i32 2, label %78
  ]

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %13, %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %22 = call i32 @ReadNumber(i32** %6, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %2, align 4
  br label %184

26:                                               ; preds = %20
  %27 = call i32 @ReadSeparator(i32** %6)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %2, align 4
  br label %184

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %33 = call i32 @ReadNumber(i32** %6, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %2, align 4
  br label %184

37:                                               ; preds = %31
  %38 = call i32 @ReadSeparator(i32** %6)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %2, align 4
  br label %184

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %44 = call i32 @ReadNumber(i32** %6, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %2, align 4
  br label %184

48:                                               ; preds = %42
  br label %107

49:                                               ; preds = %13
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %51 = call i32 @ReadNumber(i32** %6, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %2, align 4
  br label %184

55:                                               ; preds = %49
  %56 = call i32 @ReadSeparator(i32** %6)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %2, align 4
  br label %184

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %62 = call i32 @ReadNumber(i32** %6, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %2, align 4
  br label %184

66:                                               ; preds = %60
  %67 = call i32 @ReadSeparator(i32** %6)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %2, align 4
  br label %184

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %73 = call i32 @ReadNumber(i32** %6, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %2, align 4
  br label %184

77:                                               ; preds = %71
  br label %107

78:                                               ; preds = %13
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %80 = call i32 @ReadNumber(i32** %6, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %2, align 4
  br label %184

84:                                               ; preds = %78
  %85 = call i32 @ReadSeparator(i32** %6)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %2, align 4
  br label %184

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %91 = call i32 @ReadNumber(i32** %6, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* %2, align 4
  br label %184

95:                                               ; preds = %89
  %96 = call i32 @ReadSeparator(i32** %6)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* @FALSE, align 4
  store i32 %99, i32* %2, align 4
  br label %184

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %102 = call i32 @ReadNumber(i32** %6, i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* @FALSE, align 4
  store i32 %105, i32* %2, align 4
  br label %184

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %77, %48
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp sle i32 %109, 99
  br i1 %110, label %111, label %126

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp sge i32 %113, 80
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 1900, %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  br label %125

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 2000, %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %120, %115
  br label %126

126:                                              ; preds = %125, %107
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = srem i32 %128, 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = srem i32 %133, 100
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %131, %126
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = srem i32 %138, 400
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  br label %142

142:                                              ; preds = %136, %131
  %143 = phi i1 [ true, %131 ], [ %141, %136 ]
  %144 = zext i1 %143 to i32
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %5, align 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = icmp sge i32 %147, 1
  br i1 %148, label %149, label %182

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = icmp sle i32 %151, 12
  br i1 %152, label %153, label %182

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp sge i32 %155, 1
  br i1 %156, label %157, label %182

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32**, i32*** @awMonths, align 8
  %161 = load i8, i8* %5, align 1
  %162 = zext i8 %161 to i64
  %163 = getelementptr inbounds i32*, i32** %160, i64 %162
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp sle i32 %159, %169
  br i1 %170, label %171, label %182

171:                                              ; preds = %157
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp sge i32 %173, 1980
  br i1 %174, label %175, label %182

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp sle i32 %177, 2099
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = call i32 @SetLocalTime(%struct.TYPE_4__* %4)
  %181 = load i32, i32* @TRUE, align 4
  store i32 %181, i32* %2, align 4
  br label %184

182:                                              ; preds = %175, %171, %157, %153, %149, %142
  %183 = load i32, i32* @FALSE, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %182, %179, %104, %98, %93, %87, %82, %75, %69, %64, %58, %53, %46, %40, %35, %29, %24, %11
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @GetLocalTime(%struct.TYPE_4__*) #1

declare dso_local i32 @ReadNumber(i32**, i32*) #1

declare dso_local i32 @ReadSeparator(i32**) #1

declare dso_local i32 @SetLocalTime(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
