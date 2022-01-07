; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_bf.c_assemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_bf.c_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"trap\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"inc\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i8*)* @assemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assemble(i32* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 32
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  store i8* %28, i8** %6, align 8
  br label %29

29:                                               ; preds = %26, %20, %3
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 44)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @strchr(i8* %32, i8 signext 91)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @strncmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %29
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = call i32 @atoi(i8* %42)
  store i32 %43, i32* %7, align 4
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @memset(i8* %44, i8 signext -52, i32 %45)
  br label %49

47:                                               ; preds = %37
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  store i8 -112, i8* %48, align 16
  store i32 1, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %40
  br label %192

50:                                               ; preds = %29
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @strncmp(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = call i32 @atoi(i8* %59)
  store i32 %60, i32* %7, align 4
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @memset(i8* %61, i8 signext -112, i32 %62)
  br label %66

64:                                               ; preds = %54
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  store i8 -112, i8* %65, align 16
  store i32 1, i32* %7, align 4
  br label %66

66:                                               ; preds = %64, %57
  br label %191

67:                                               ; preds = %50
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @strncmp(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** %9, align 8
  %73 = icmp ne i8* %72, null
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 43, i32 62
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %11, align 1
  %77 = load i8, i8* %11, align 1
  %78 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  store i8 %77, i8* %78, align 16
  store i32 1, i32* %7, align 4
  br label %190

79:                                               ; preds = %67
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @strncmp(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = load i8*, i8** %9, align 8
  %85 = icmp ne i8* %84, null
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 45, i32 60
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %12, align 1
  %89 = load i8, i8* %12, align 1
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  store i8 %89, i8* %90, align 16
  store i32 1, i32* %7, align 4
  br label %189

91:                                               ; preds = %79
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 @strncmp(i8* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %114, label %95

95:                                               ; preds = %91
  %96 = load i8*, i8** %9, align 8
  %97 = icmp ne i8* %96, null
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 45, i32 60
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %13, align 1
  %101 = load i8*, i8** %8, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %95
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = call i32 @atoi(i8* %105)
  store i32 %106, i32* %7, align 4
  %107 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %108 = load i8, i8* %13, align 1
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @memset(i8* %107, i8 signext %108, i32 %109)
  br label %113

111:                                              ; preds = %95
  %112 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  store i8 60, i8* %112, align 16
  store i32 1, i32* %7, align 4
  br label %113

113:                                              ; preds = %111, %103
  br label %188

114:                                              ; preds = %91
  %115 = load i8*, i8** %6, align 8
  %116 = call i32 @strncmp(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %137, label %118

118:                                              ; preds = %114
  %119 = load i8*, i8** %9, align 8
  %120 = icmp ne i8* %119, null
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 43, i32 62
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %14, align 1
  %124 = load i8*, i8** %8, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %134

126:                                              ; preds = %118
  %127 = load i8*, i8** %8, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  %129 = call i32 @atoi(i8* %128)
  store i32 %129, i32* %7, align 4
  %130 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %131 = load i8, i8* %14, align 1
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @memset(i8* %130, i8 signext %131, i32 %132)
  br label %136

134:                                              ; preds = %118
  %135 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  store i8 60, i8* %135, align 16
  store i32 1, i32* %7, align 4
  br label %136

136:                                              ; preds = %134, %126
  br label %187

137:                                              ; preds = %114
  %138 = load i8*, i8** %6, align 8
  %139 = call i32 @strncmp(i8* %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  store i8 91, i8* %142, align 16
  store i32 1, i32* %7, align 4
  br label %186

143:                                              ; preds = %137
  %144 = load i8*, i8** %6, align 8
  %145 = call i32 @strncmp(i8* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  store i8 93, i8* %148, align 16
  store i32 1, i32* %7, align 4
  br label %185

149:                                              ; preds = %143
  %150 = load i8*, i8** %6, align 8
  %151 = call i32 @strncmp(i8* %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %166, label %153

153:                                              ; preds = %149
  %154 = load i8*, i8** %8, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %163

156:                                              ; preds = %153
  %157 = load i8*, i8** %8, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  %159 = call i32 @atoi(i8* %158)
  store i32 %159, i32* %7, align 4
  %160 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @memset(i8* %160, i8 signext 44, i32 %161)
  br label %165

163:                                              ; preds = %153
  %164 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  store i8 44, i8* %164, align 16
  store i32 1, i32* %7, align 4
  br label %165

165:                                              ; preds = %163, %156
  br label %184

166:                                              ; preds = %149
  %167 = load i8*, i8** %6, align 8
  %168 = call i32 @strncmp(i8* %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %183, label %170

170:                                              ; preds = %166
  %171 = load i8*, i8** %8, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %180

173:                                              ; preds = %170
  %174 = load i8*, i8** %8, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 1
  %176 = call i32 @atoi(i8* %175)
  store i32 %176, i32* %7, align 4
  %177 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @memset(i8* %177, i8 signext 46, i32 %178)
  br label %182

180:                                              ; preds = %170
  %181 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  store i8 46, i8* %181, align 16
  store i32 1, i32* %7, align 4
  br label %182

182:                                              ; preds = %180, %173
  br label %183

183:                                              ; preds = %182, %166
  br label %184

184:                                              ; preds = %183, %165
  br label %185

185:                                              ; preds = %184, %147
  br label %186

186:                                              ; preds = %185, %141
  br label %187

187:                                              ; preds = %186, %136
  br label %188

188:                                              ; preds = %187, %113
  br label %189

189:                                              ; preds = %188, %83
  br label %190

190:                                              ; preds = %189, %71
  br label %191

191:                                              ; preds = %190, %66
  br label %192

192:                                              ; preds = %191, %49
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @r_strbuf_setbin(i32* %194, i8* %195, i32 %196)
  %198 = load i32, i32* %7, align 4
  ret i32 %198
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @r_strbuf_setbin(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
