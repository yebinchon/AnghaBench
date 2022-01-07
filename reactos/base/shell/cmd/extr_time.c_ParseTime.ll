; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_time.c_ParseTime.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_time.c_ParseTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@cTimeSeparator = common dso_local global i64 0, align 8
@cDecimalSeparator = common dso_local global i64 0, align 8
@nTimeFormat = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @ParseTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseTime(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  %6 = load i64*, i64** %3, align 8
  store i64* %6, i64** %5, align 8
  %7 = load i64*, i64** %3, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @TRUE, align 4
  store i32 %11, i32* %2, align 4
  br label %189

12:                                               ; preds = %1
  %13 = call i32 @GetLocalTime(%struct.TYPE_4__* %4)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store i32 0, i32* %17, align 4
  %18 = load i64*, i64** %5, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @_istdigit(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %28, %22
  %24 = load i64*, i64** %5, align 8
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @_istdigit(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 10
  %32 = sext i32 %31 to i64
  %33 = load i64*, i64** %5, align 8
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %32, %34
  %36 = call i64 @_T(i8 signext 48)
  %37 = sub nsw i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i64*, i64** %5, align 8
  %41 = getelementptr inbounds i64, i64* %40, i32 1
  store i64* %41, i64** %5, align 8
  br label %23

42:                                               ; preds = %23
  br label %45

43:                                               ; preds = %12
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %2, align 4
  br label %189

45:                                               ; preds = %42
  %46 = load i64*, i64** %5, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @cTimeSeparator, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %2, align 4
  br label %189

52:                                               ; preds = %45
  %53 = load i64*, i64** %5, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %5, align 8
  %55 = load i64*, i64** %5, align 8
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @_istdigit(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %65, %59
  %61 = load i64*, i64** %5, align 8
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @_istdigit(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %67, 10
  %69 = sext i32 %68 to i64
  %70 = load i64*, i64** %5, align 8
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %69, %71
  %73 = call i64 @_T(i8 signext 48)
  %74 = sub nsw i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = load i64*, i64** %5, align 8
  %78 = getelementptr inbounds i64, i64* %77, i32 1
  store i64* %78, i64** %5, align 8
  br label %60

79:                                               ; preds = %60
  br label %82

80:                                               ; preds = %52
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %2, align 4
  br label %189

82:                                               ; preds = %79
  %83 = load i64*, i64** %5, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @cTimeSeparator, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %2, align 4
  br label %189

89:                                               ; preds = %82
  %90 = load i64*, i64** %5, align 8
  %91 = getelementptr inbounds i64, i64* %90, i32 1
  store i64* %91, i64** %5, align 8
  %92 = load i64*, i64** %5, align 8
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @_istdigit(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %102, %96
  %98 = load i64*, i64** %5, align 8
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @_istdigit(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %104, 10
  %106 = sext i32 %105 to i64
  %107 = load i64*, i64** %5, align 8
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %106, %108
  %110 = call i64 @_T(i8 signext 48)
  %111 = sub nsw i64 %109, %110
  %112 = trunc i64 %111 to i32
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i32 %112, i32* %113, align 4
  %114 = load i64*, i64** %5, align 8
  %115 = getelementptr inbounds i64, i64* %114, i32 1
  store i64* %115, i64** %5, align 8
  br label %97

116:                                              ; preds = %97
  br label %119

117:                                              ; preds = %89
  %118 = load i32, i32* @FALSE, align 4
  store i32 %118, i32* %2, align 4
  br label %189

119:                                              ; preds = %116
  %120 = load i64*, i64** %5, align 8
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @cDecimalSeparator, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %142

124:                                              ; preds = %119
  %125 = load i64*, i64** %5, align 8
  %126 = getelementptr inbounds i64, i64* %125, i32 1
  store i64* %126, i64** %5, align 8
  %127 = load i64*, i64** %5, align 8
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @_istdigit(i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %124
  br label %132

132:                                              ; preds = %137, %131
  %133 = load i64*, i64** %5, align 8
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @_istdigit(i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i64*, i64** %5, align 8
  %139 = getelementptr inbounds i64, i64* %138, i32 1
  store i64* %139, i64** %5, align 8
  br label %132

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %140, %124
  br label %142

142:                                              ; preds = %141, %119
  %143 = load i64, i64* @nTimeFormat, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %168

145:                                              ; preds = %142
  %146 = load i64*, i64** %3, align 8
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @_totupper(i64 %147)
  %149 = call i64 @_T(i8 signext 80)
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 12
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %151, %145
  %156 = load i64*, i64** %3, align 8
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @_totupper(i64 %157)
  %159 = call i64 @_T(i8 signext 65)
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 12
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 0, i32* %166, align 4
  br label %167

167:                                              ; preds = %165, %161, %155
  br label %168

168:                                              ; preds = %167, %142
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp sgt i32 %170, 23
  br i1 %171, label %184, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp sgt i32 %174, 60
  br i1 %175, label %184, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = icmp sgt i32 %178, 60
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = icmp sgt i32 %182, 999
  br i1 %183, label %184, label %186

184:                                              ; preds = %180, %176, %172, %168
  %185 = load i32, i32* @FALSE, align 4
  store i32 %185, i32* %2, align 4
  br label %189

186:                                              ; preds = %180
  %187 = call i32 @SetLocalTime(%struct.TYPE_4__* %4)
  %188 = load i32, i32* @TRUE, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %186, %184, %117, %87, %80, %50, %43, %10
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @GetLocalTime(%struct.TYPE_4__*) #1

declare dso_local i64 @_istdigit(i64) #1

declare dso_local i64 @_T(i8 signext) #1

declare dso_local i64 @_totupper(i64) #1

declare dso_local i32 @SetLocalTime(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
