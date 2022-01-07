; ModuleID = '/home/carl/AnghaBench/nanomsg/tools/extr_nanocat.c_nn_print_message.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tools/extr_nanocat.c_nn_print_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_print_message(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %175 [
    i32 128, label %10
    i32 129, label %11
    i32 133, label %16
    i32 130, label %42
    i32 131, label %90
    i32 132, label %155
  ]

10:                                               ; preds = %3
  br label %178

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @stdout, align 4
  %15 = call i32 @fwrite(i8* %12, i32 1, i32 %13, i32 %14)
  br label %175

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %34, %16
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @isprint(i8 signext %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = load i32, i32* @stdout, align 4
  %29 = call i32 @fputc(i8 signext %27, i32 %28)
  br label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @stdout, align 4
  %32 = call i32 @fputc(i8 signext 46, i32 %31)
  br label %33

33:                                               ; preds = %30, %25
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %6, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  br label %17

39:                                               ; preds = %17
  %40 = load i32, i32* @stdout, align 4
  %41 = call i32 @fputc(i8 signext 10, i32 %40)
  br label %175

42:                                               ; preds = %3
  %43 = load i32, i32* @stdout, align 4
  %44 = call i32 @fputc(i8 signext 34, i32 %43)
  br label %45

45:                                               ; preds = %82, %42
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %87

48:                                               ; preds = %45
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  switch i32 %51, label %64 [
    i32 10, label %52
    i32 13, label %55
    i32 92, label %58
    i32 34, label %58
  ]

52:                                               ; preds = %48
  %53 = load i32, i32* @stdout, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %81

55:                                               ; preds = %48
  %56 = load i32, i32* @stdout, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %81

58:                                               ; preds = %48, %48
  %59 = load i32, i32* @stdout, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %81

64:                                               ; preds = %48
  %65 = load i8*, i8** %5, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @isprint(i8 signext %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i8*, i8** %5, align 8
  %71 = load i8, i8* %70, align 1
  %72 = load i32, i32* @stdout, align 4
  %73 = call i32 @fputc(i8 signext %71, i32 %72)
  br label %80

74:                                               ; preds = %64
  %75 = load i32, i32* @stdout, align 4
  %76 = load i8*, i8** %5, align 8
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %74, %69
  br label %81

81:                                               ; preds = %80, %58, %55, %52
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %6, align 4
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %5, align 8
  br label %45

87:                                               ; preds = %45
  %88 = load i32, i32* @stdout, align 4
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %175

90:                                               ; preds = %3
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 256
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load i32, i32* @stdout, align 4
  %95 = call i32 @fputc(i8 signext -60, i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = trunc i32 %96 to i8
  %98 = load i32, i32* @stdout, align 4
  %99 = call i32 @fputc(i8 signext %97, i32 %98)
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @stdout, align 4
  %103 = call i32 @fwrite(i8* %100, i32 1, i32 %101, i32 %102)
  br label %154

104:                                              ; preds = %90
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %105, 65536
  br i1 %106, label %107, label %124

107:                                              ; preds = %104
  %108 = load i32, i32* @stdout, align 4
  %109 = call i32 @fputc(i8 signext -59, i32 %108)
  %110 = load i32, i32* %6, align 4
  %111 = ashr i32 %110, 8
  %112 = trunc i32 %111 to i8
  %113 = load i32, i32* @stdout, align 4
  %114 = call i32 @fputc(i8 signext %112, i32 %113)
  %115 = load i32, i32* %6, align 4
  %116 = and i32 %115, 255
  %117 = trunc i32 %116 to i8
  %118 = load i32, i32* @stdout, align 4
  %119 = call i32 @fputc(i8 signext %117, i32 %118)
  %120 = load i8*, i8** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @stdout, align 4
  %123 = call i32 @fwrite(i8* %120, i32 1, i32 %121, i32 %122)
  br label %153

124:                                              ; preds = %104
  %125 = load i32, i32* @stdout, align 4
  %126 = call i32 @fputc(i8 signext -58, i32 %125)
  %127 = load i32, i32* %6, align 4
  %128 = ashr i32 %127, 24
  %129 = trunc i32 %128 to i8
  %130 = load i32, i32* @stdout, align 4
  %131 = call i32 @fputc(i8 signext %129, i32 %130)
  %132 = load i32, i32* %6, align 4
  %133 = ashr i32 %132, 16
  %134 = and i32 %133, 255
  %135 = trunc i32 %134 to i8
  %136 = load i32, i32* @stdout, align 4
  %137 = call i32 @fputc(i8 signext %135, i32 %136)
  %138 = load i32, i32* %6, align 4
  %139 = ashr i32 %138, 8
  %140 = and i32 %139, 255
  %141 = trunc i32 %140 to i8
  %142 = load i32, i32* @stdout, align 4
  %143 = call i32 @fputc(i8 signext %141, i32 %142)
  %144 = load i32, i32* %6, align 4
  %145 = and i32 %144, 255
  %146 = trunc i32 %145 to i8
  %147 = load i32, i32* @stdout, align 4
  %148 = call i32 @fputc(i8 signext %146, i32 %147)
  %149 = load i8*, i8** %5, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @stdout, align 4
  %152 = call i32 @fwrite(i8* %149, i32 1, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %124, %107
  br label %154

154:                                              ; preds = %153, %93
  br label %175

155:                                              ; preds = %3
  %156 = load i32, i32* @stdout, align 4
  %157 = call i32 @fputc(i8 signext 34, i32 %156)
  br label %158

158:                                              ; preds = %167, %155
  %159 = load i32, i32* %6, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %158
  %162 = load i32, i32* @stdout, align 4
  %163 = load i8*, i8** %5, align 8
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = call i32 (i32, i8*, ...) @fprintf(i32 %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %161
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %6, align 4
  %170 = load i8*, i8** %5, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %5, align 8
  br label %158

172:                                              ; preds = %158
  %173 = load i32, i32* @stdout, align 4
  %174 = call i32 (i32, i8*, ...) @fprintf(i32 %173, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %175

175:                                              ; preds = %3, %172, %154, %87, %39, %11
  %176 = load i32, i32* @stdout, align 4
  %177 = call i32 @fflush(i32 %176)
  br label %178

178:                                              ; preds = %175, %10
  ret void
}

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @isprint(i8 signext) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
