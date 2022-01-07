; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/json/src/extr_json.c_emit_string.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/json/src/extr_json.c_emit_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"\\uFFFD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_string(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @utf8_validate(i8* %14)
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = call i32 @sb_need(%struct.TYPE_4__* %17, i32 14)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %7, align 8
  store i8 34, i8* %22, align 1
  br label %24

24:                                               ; preds = %168, %2
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %177

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  %32 = load i8, i8* %30, align 1
  store i8 %32, i8* %8, align 1
  %33 = load i8, i8* %8, align 1
  %34 = zext i8 %33 to i32
  switch i32 %34, label %70 [
    i32 34, label %35
    i32 92, label %40
    i32 8, label %45
    i32 12, label %50
    i32 10, label %55
    i32 13, label %60
    i32 9, label %65
  ]

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %7, align 8
  store i8 92, i8* %36, align 1
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  store i8 34, i8* %38, align 1
  br label %168

40:                                               ; preds = %29
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %7, align 8
  store i8 92, i8* %41, align 1
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %7, align 8
  store i8 92, i8* %43, align 1
  br label %168

45:                                               ; preds = %29
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %7, align 8
  store i8 92, i8* %46, align 1
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %7, align 8
  store i8 98, i8* %48, align 1
  br label %168

50:                                               ; preds = %29
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %7, align 8
  store i8 92, i8* %51, align 1
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %7, align 8
  store i8 102, i8* %53, align 1
  br label %168

55:                                               ; preds = %29
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %7, align 8
  store i8 92, i8* %56, align 1
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %7, align 8
  store i8 110, i8* %58, align 1
  br label %168

60:                                               ; preds = %29
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %7, align 8
  store i8 92, i8* %61, align 1
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  store i8 114, i8* %63, align 1
  br label %168

65:                                               ; preds = %29
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %7, align 8
  store i8 92, i8* %66, align 1
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %7, align 8
  store i8 116, i8* %68, align 1
  br label %168

70:                                               ; preds = %29
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 -1
  store i8* %72, i8** %6, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @utf8_validate_cz(i8* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %70
  %78 = call i32 @assert(i32 0)
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @strcpy(i8* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 6
  store i8* %85, i8** %7, align 8
  br label %93

86:                                               ; preds = %77
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %7, align 8
  store i8 -17, i8* %87, align 1
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %7, align 8
  store i8 -65, i8* %89, align 1
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %7, align 8
  store i8 -67, i8* %91, align 1
  br label %93

93:                                               ; preds = %86, %81
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %6, align 8
  br label %167

96:                                               ; preds = %70
  %97 = load i8, i8* %8, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp slt i32 %98, 31
  br i1 %99, label %107, label %100

100:                                              ; preds = %96
  %101 = load i8, i8* %8, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp sge i32 %102, 128
  br i1 %103, label %104, label %154

104:                                              ; preds = %100
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %154

107:                                              ; preds = %104, %96
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @utf8_read_char(i8* %108, i32* %10)
  %110 = load i8*, i8** %6, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %112, i8** %6, align 8
  %113 = load i32, i32* %10, align 4
  %114 = icmp sle i32 %113, 65535
  br i1 %114, label %115, label %126

115:                                              ; preds = %107
  %116 = load i8*, i8** %7, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %7, align 8
  store i8 92, i8* %116, align 1
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %7, align 8
  store i8 117, i8* %118, align 1
  %120 = load i8*, i8** %7, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @write_hex16(i8* %120, i32 %121)
  %123 = load i8*, i8** %7, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8* %125, i8** %7, align 8
  br label %153

126:                                              ; preds = %107
  %127 = load i32, i32* %10, align 4
  %128 = icmp sle i32 %127, 1114111
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @to_surrogate_pair(i32 %131, i32* %11, i32* %12)
  %133 = load i8*, i8** %7, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %7, align 8
  store i8 92, i8* %133, align 1
  %135 = load i8*, i8** %7, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %7, align 8
  store i8 117, i8* %135, align 1
  %137 = load i8*, i8** %7, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @write_hex16(i8* %137, i32 %138)
  %140 = load i8*, i8** %7, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %7, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %7, align 8
  store i8 92, i8* %143, align 1
  %145 = load i8*, i8** %7, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %7, align 8
  store i8 117, i8* %145, align 1
  %147 = load i8*, i8** %7, align 8
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @write_hex16(i8* %147, i32 %148)
  %150 = load i8*, i8** %7, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8* %152, i8** %7, align 8
  br label %153

153:                                              ; preds = %126, %115
  br label %166

154:                                              ; preds = %104, %100
  br label %155

155:                                              ; preds = %159, %154
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %9, align 4
  %158 = icmp ne i32 %156, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %155
  %160 = load i8*, i8** %6, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %6, align 8
  %162 = load i8, i8* %160, align 1
  %163 = load i8*, i8** %7, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %7, align 8
  store i8 %162, i8* %163, align 1
  br label %155

165:                                              ; preds = %155
  br label %166

166:                                              ; preds = %165, %153
  br label %167

167:                                              ; preds = %166, %93
  br label %168

168:                                              ; preds = %167, %65, %60, %55, %50, %45, %40, %35
  %169 = load i8*, i8** %7, align 8
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  store i8* %169, i8** %171, align 8
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %173 = call i32 @sb_need(%struct.TYPE_4__* %172, i32 14)
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  store i8* %176, i8** %7, align 8
  br label %24

177:                                              ; preds = %24
  %178 = load i8*, i8** %7, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %7, align 8
  store i8 34, i8* %178, align 1
  %180 = load i8*, i8** %7, align 8
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  store i8* %180, i8** %182, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @utf8_validate(i8*) #1

declare dso_local i32 @sb_need(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @utf8_validate_cz(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @utf8_read_char(i8*, i32*) #1

declare dso_local i32 @write_hex16(i8*, i32) #1

declare dso_local i32 @to_surrogate_pair(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
