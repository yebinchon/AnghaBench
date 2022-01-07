; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_CopyAttributeOutCSV.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_CopyAttributeOutCSV.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i32, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"\\.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*, i32, i32)* @CopyAttributeOutCSV to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CopyAttributeOutCSV(%struct.TYPE_5__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %12, align 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %13, align 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %14, align 1
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %4
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strcmp(i8* %34, i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 1, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %33, %4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @pg_server_to_any(i8* %47, i32 %49, i32 %52)
  store i8* %53, i8** %9, align 8
  br label %56

54:                                               ; preds = %41
  %55 = load i8*, i8** %6, align 8
  store i8* %55, i8** %9, align 8
  br label %56

56:                                               ; preds = %54, %46
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %119, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i8*, i8** %9, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 1, i32* %7, align 4
  br label %118

67:                                               ; preds = %62, %59
  %68 = load i8*, i8** %9, align 8
  store i8* %68, i8** %15, align 8
  br label %69

69:                                               ; preds = %116, %67
  %70 = load i8*, i8** %15, align 8
  %71 = load i8, i8* %70, align 1
  store i8 %71, i8* %11, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %117

74:                                               ; preds = %69
  %75 = load i8, i8* %11, align 1
  %76 = sext i8 %75 to i32
  %77 = load i8, i8* %12, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %94, label %80

80:                                               ; preds = %74
  %81 = load i8, i8* %11, align 1
  %82 = sext i8 %81 to i32
  %83 = load i8, i8* %13, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %94, label %86

86:                                               ; preds = %80
  %87 = load i8, i8* %11, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 10
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i8, i8* %11, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 13
  br i1 %93, label %94, label %95

94:                                               ; preds = %90, %86, %80, %74
  store i32 1, i32* %7, align 4
  br label %117

95:                                               ; preds = %90
  %96 = load i8, i8* %11, align 1
  %97 = call i64 @IS_HIGHBIT_SET(i8 signext %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load i8*, i8** %15, align 8
  %109 = call i32 @pg_encoding_mblen(i32 %107, i8* %108)
  %110 = load i8*, i8** %15, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %112, i8** %15, align 8
  br label %116

113:                                              ; preds = %99, %95
  %114 = load i8*, i8** %15, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %15, align 8
  br label %116

116:                                              ; preds = %113, %104
  br label %69

117:                                              ; preds = %94, %69
  br label %118

118:                                              ; preds = %117, %66
  br label %119

119:                                              ; preds = %118, %56
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %177

122:                                              ; preds = %119
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %124 = load i8, i8* %13, align 1
  %125 = call i32 @CopySendChar(%struct.TYPE_5__* %123, i8 signext %124)
  %126 = load i8*, i8** %9, align 8
  store i8* %126, i8** %10, align 8
  br label %127

127:                                              ; preds = %171, %122
  %128 = load i8*, i8** %9, align 8
  %129 = load i8, i8* %128, align 1
  store i8 %129, i8* %11, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %172

132:                                              ; preds = %127
  %133 = load i8, i8* %11, align 1
  %134 = sext i8 %133 to i32
  %135 = load i8, i8* %13, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %144, label %138

138:                                              ; preds = %132
  %139 = load i8, i8* %11, align 1
  %140 = sext i8 %139 to i32
  %141 = load i8, i8* %14, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %138, %132
  %145 = call i32 (...) @DUMPSOFAR()
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %147 = load i8, i8* %14, align 1
  %148 = call i32 @CopySendChar(%struct.TYPE_5__* %146, i8 signext %147)
  %149 = load i8*, i8** %9, align 8
  store i8* %149, i8** %10, align 8
  br label %150

150:                                              ; preds = %144, %138
  %151 = load i8, i8* %11, align 1
  %152 = call i64 @IS_HIGHBIT_SET(i8 signext %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %168

154:                                              ; preds = %150
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %154
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = load i8*, i8** %9, align 8
  %164 = call i32 @pg_encoding_mblen(i32 %162, i8* %163)
  %165 = load i8*, i8** %9, align 8
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  store i8* %167, i8** %9, align 8
  br label %171

168:                                              ; preds = %154, %150
  %169 = load i8*, i8** %9, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %9, align 8
  br label %171

171:                                              ; preds = %168, %159
  br label %127

172:                                              ; preds = %127
  %173 = call i32 (...) @DUMPSOFAR()
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %175 = load i8, i8* %13, align 1
  %176 = call i32 @CopySendChar(%struct.TYPE_5__* %174, i8 signext %175)
  br label %181

177:                                              ; preds = %119
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %179 = load i8*, i8** %9, align 8
  %180 = call i32 @CopySendString(%struct.TYPE_5__* %178, i8* %179)
  br label %181

181:                                              ; preds = %177, %172
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @pg_server_to_any(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_HIGHBIT_SET(i8 signext) #1

declare dso_local i32 @pg_encoding_mblen(i32, i8*) #1

declare dso_local i32 @CopySendChar(%struct.TYPE_5__*, i8 signext) #1

declare dso_local i32 @DUMPSOFAR(...) #1

declare dso_local i32 @CopySendString(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
