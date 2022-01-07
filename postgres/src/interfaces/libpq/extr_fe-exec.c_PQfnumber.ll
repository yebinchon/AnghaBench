; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQfnumber.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQfnumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PQfnumber(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 1, i32* %8, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %172

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = icmp eq %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %20, %17
  store i32 -1, i32* %3, align 4
  br label %172

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  store i8* %33, i8** %9, align 8
  br label %34

34:                                               ; preds = %53, %32
  %35 = load i8*, i8** %9, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load i8*, i8** %9, align 8
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %12, align 1
  %41 = load i8, i8* %12, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 34
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = load i8, i8* %12, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8, i8* %12, align 1
  %48 = call signext i8 @pg_tolower(i8 zeroext %47)
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44, %38
  store i32 0, i32* %8, align 4
  br label %56

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %9, align 8
  br label %34

56:                                               ; preds = %51, %34
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %56
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %81, %59
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %60
  %67 = load i8*, i8** %5, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @strcmp(i8* %67, i32 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %3, align 4
  br label %172

80:                                               ; preds = %66
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %60

84:                                               ; preds = %60
  br label %85

85:                                               ; preds = %84, %56
  %86 = load i8*, i8** %5, align 8
  %87 = call i8* @strdup(i8* %86)
  store i8* %87, i8** %6, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 -1, i32* %3, align 4
  br label %172

91:                                               ; preds = %85
  store i32 0, i32* %7, align 4
  %92 = load i8*, i8** %6, align 8
  store i8* %92, i8** %10, align 8
  %93 = load i8*, i8** %6, align 8
  store i8* %93, i8** %9, align 8
  br label %94

94:                                               ; preds = %138, %91
  %95 = load i8*, i8** %9, align 8
  %96 = load i8, i8* %95, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %98, label %141

98:                                               ; preds = %94
  %99 = load i8*, i8** %9, align 8
  %100 = load i8, i8* %99, align 1
  store i8 %100, i8* %13, align 1
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %98
  %104 = load i8, i8* %13, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 34
  br i1 %106, label %107, label %120

107:                                              ; preds = %103
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 34
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load i8*, i8** %10, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %10, align 8
  store i8 34, i8* %114, align 1
  %116 = load i8*, i8** %9, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %9, align 8
  br label %119

118:                                              ; preds = %107
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %118, %113
  br label %124

120:                                              ; preds = %103
  %121 = load i8, i8* %13, align 1
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %10, align 8
  store i8 %121, i8* %122, align 1
  br label %124

124:                                              ; preds = %120, %119
  br label %137

125:                                              ; preds = %98
  %126 = load i8, i8* %13, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 34
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store i32 1, i32* %7, align 4
  br label %136

130:                                              ; preds = %125
  %131 = load i8, i8* %13, align 1
  %132 = call signext i8 @pg_tolower(i8 zeroext %131)
  store i8 %132, i8* %13, align 1
  %133 = load i8, i8* %13, align 1
  %134 = load i8*, i8** %10, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %10, align 8
  store i8 %133, i8* %134, align 1
  br label %136

136:                                              ; preds = %130, %129
  br label %137

137:                                              ; preds = %136, %124
  br label %138

138:                                              ; preds = %137
  %139 = load i8*, i8** %9, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %9, align 8
  br label %94

141:                                              ; preds = %94
  %142 = load i8*, i8** %10, align 8
  store i8 0, i8* %142, align 1
  store i32 0, i32* %11, align 4
  br label %143

143:                                              ; preds = %166, %141
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %169

149:                                              ; preds = %143
  %150 = load i8*, i8** %6, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @strcmp(i8* %150, i32 %158)
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %149
  %162 = load i8*, i8** %6, align 8
  %163 = call i32 @free(i8* %162)
  %164 = load i32, i32* %11, align 4
  store i32 %164, i32* %3, align 4
  br label %172

165:                                              ; preds = %149
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %11, align 4
  br label %143

169:                                              ; preds = %143
  %170 = load i8*, i8** %6, align 8
  %171 = call i32 @free(i8* %170)
  store i32 -1, i32* %3, align 4
  br label %172

172:                                              ; preds = %169, %161, %90, %78, %31, %16
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local signext i8 @pg_tolower(i8 zeroext) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
