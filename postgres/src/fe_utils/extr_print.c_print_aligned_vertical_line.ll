; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_print_aligned_vertical_line.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_print_aligned_vertical_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"* Record %lu\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"[ RECORD %lu ]\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i16, i64, i32, i32, i64, i32*)* @print_aligned_vertical_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_aligned_vertical_line(%struct.TYPE_5__* %0, i16 zeroext %1, i64 %2, i32 %3, i32 %4, i64 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i16 %1, i16* %9, align 2
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i64, i64* %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %21
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %15, align 8
  store i32 0, i32* %17, align 4
  %23 = load i16, i16* %9, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %35

26:                                               ; preds = %7
  %27 = load i32*, i32** %14, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %33)
  br label %46

35:                                               ; preds = %7
  %36 = load i16, i16* %9, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = call i32 @fputs(i8* %42, i32* %43)
  br label %45

45:                                               ; preds = %39, %35
  br label %46

46:                                               ; preds = %45, %26
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load i16, i16* %9, align 2
  %51 = zext i16 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32*, i32** %14, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  store i32 %56, i32* %17, align 4
  br label %61

57:                                               ; preds = %49
  %58 = load i32*, i32** %14, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  store i32 %60, i32* %17, align 4
  br label %61

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %61, %46
  %63 = load i16, i16* %9, align 2
  %64 = zext i16 %63 to i32
  %65 = icmp ne i32 %64, 2
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %17, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %17, align 4
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i32, i32* %17, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 0, i32* %17, align 4
  br label %73

73:                                               ; preds = %72, %69
  %74 = load i32, i32* %17, align 4
  store i32 %74, i32* %16, align 4
  br label %75

75:                                               ; preds = %92, %73
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %75
  %80 = load i16, i16* %9, align 2
  %81 = zext i16 %80 to i32
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  br label %88

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %83
  %89 = phi i8* [ %86, %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %87 ]
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @fputs(i8* %89, i32* %90)
  br label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %16, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %16, align 4
  br label %75

95:                                               ; preds = %75
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %17, align 4
  %98 = sub i32 %97, %96
  store i32 %98, i32* %17, align 4
  %99 = load i16, i16* %9, align 2
  %100 = zext i16 %99 to i32
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %133

102:                                              ; preds = %95
  %103 = load i32, i32* %17, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %17, align 4
  %105 = icmp sle i32 %103, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load i32*, i32** %14, align 8
  %111 = call i32 @fputs(i8* %109, i32* %110)
  br label %112

112:                                              ; preds = %106, %102
  %113 = load i32, i32* %17, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %17, align 4
  %115 = icmp sle i32 %113, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = load i32*, i32** %14, align 8
  %121 = call i32 @fputs(i8* %119, i32* %120)
  br label %122

122:                                              ; preds = %116, %112
  %123 = load i32, i32* %17, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %17, align 4
  %125 = icmp sle i32 %123, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load i32*, i32** %14, align 8
  %131 = call i32 @fputs(i8* %129, i32* %130)
  br label %132

132:                                              ; preds = %126, %122
  br label %141

133:                                              ; preds = %95
  %134 = load i32, i32* %17, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %17, align 4
  %136 = icmp sle i32 %134, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32*, i32** %14, align 8
  %139 = call i32 @fputc(i8 signext 32, i32* %138)
  br label %140

140:                                              ; preds = %137, %133
  br label %141

141:                                              ; preds = %140, %132
  %142 = load i32, i32* %17, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 0, i32* %17, align 4
  br label %145

145:                                              ; preds = %144, %141
  %146 = load i32, i32* %17, align 4
  store i32 %146, i32* %16, align 4
  br label %147

147:                                              ; preds = %164, %145
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp ult i32 %148, %149
  br i1 %150, label %151, label %167

151:                                              ; preds = %147
  %152 = load i16, i16* %9, align 2
  %153 = zext i16 %152 to i32
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  br label %160

159:                                              ; preds = %151
  br label %160

160:                                              ; preds = %159, %155
  %161 = phi i8* [ %158, %155 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %159 ]
  %162 = load i32*, i32** %14, align 8
  %163 = call i32 @fputs(i8* %161, i32* %162)
  br label %164

164:                                              ; preds = %160
  %165 = load i32, i32* %16, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %16, align 4
  br label %147

167:                                              ; preds = %147
  %168 = load i16, i16* %9, align 2
  %169 = zext i16 %168 to i32
  %170 = icmp eq i32 %169, 2
  br i1 %170, label %171, label %180

171:                                              ; preds = %167
  %172 = load i32*, i32** %14, align 8
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 3
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 (i32*, i8*, ...) @fprintf(i32* %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %175, i8* %178)
  br label %180

180:                                              ; preds = %171, %167
  %181 = load i32*, i32** %14, align 8
  %182 = call i32 @fputc(i8 signext 10, i32* %181)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
