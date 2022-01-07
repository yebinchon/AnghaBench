; ModuleID = '/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_arm_pseudo.c_parse.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_arm_pseudo.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Unbalanced bracket\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"+ -\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"- -\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"+ \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca [256 x i8], align 16
  %10 = alloca [256 x i8], align 16
  %11 = alloca [256 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [4 x i8*], align 16
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp uge i64 %23, 256
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %214

26:                                               ; preds = %3
  %27 = load i32, i32* %13, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i8* @malloc(i32 %28)
  store i8* %29, i8** %14, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %214

32:                                               ; preds = %26
  %33 = load i8*, i8** %14, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i32 @memcpy(i8* %33, i8* %34, i32 %36)
  %38 = load i8*, i8** %14, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %200

41:                                               ; preds = %32
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %42, align 16
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %43, align 16
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %44, align 16
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %45, align 16
  %46 = load i8*, i8** %14, align 8
  %47 = call i8* @strchr(i8* %46, i8 signext 32)
  store i8* %47, i8** %15, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  %51 = load i8*, i8** %14, align 8
  %52 = call i8* @strchr(i8* %51, i8 signext 9)
  store i8* %52, i8** %15, align 8
  br label %53

53:                                               ; preds = %50, %41
  %54 = load i8*, i8** %15, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %168

56:                                               ; preds = %53
  %57 = load i8*, i8** %15, align 8
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %15, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %15, align 8
  br label %60

60:                                               ; preds = %66, %56
  %61 = load i8*, i8** %15, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 32
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65
  %67 = load i8*, i8** %15, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %15, align 8
  br label %60

69:                                               ; preds = %60
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %71 = load i8*, i8** %14, align 8
  %72 = call i32 @strncpy(i8* %70, i8* %71, i32 255)
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %74 = load i8*, i8** %15, align 8
  %75 = call i32 @strncpy(i8* %73, i8* %74, i32 255)
  %76 = load i8*, i8** %15, align 8
  store i8* %76, i8** %16, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 40
  br i1 %80, label %81, label %85

81:                                               ; preds = %69
  %82 = load i8*, i8** %15, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = call i8* @strchr(i8* %83, i8 signext 41)
  store i8* %84, i8** %15, align 8
  br label %85

85:                                               ; preds = %81, %69
  %86 = load i8*, i8** %15, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load i8*, i8** %15, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 91
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i8*, i8** %15, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = call i8* @strchr(i8* %95, i8 signext 93)
  store i8* %96, i8** %15, align 8
  br label %97

97:                                               ; preds = %93, %88, %85
  %98 = load i8*, i8** %15, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load i8*, i8** %15, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 123
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i8*, i8** %15, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = call i8* @strchr(i8* %107, i8 signext 125)
  store i8* %108, i8** %15, align 8
  br label %109

109:                                              ; preds = %105, %100, %97
  %110 = load i8*, i8** %15, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = call i32 @eprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %114 = load i8*, i8** %14, align 8
  %115 = call i32 @free(i8* %114)
  store i32 0, i32* %4, align 4
  br label %214

116:                                              ; preds = %109
  %117 = load i8*, i8** %15, align 8
  %118 = call i8* @strchr(i8* %117, i8 signext 44)
  store i8* %118, i8** %15, align 8
  %119 = load i8*, i8** %15, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %167

121:                                              ; preds = %116
  %122 = load i8*, i8** %15, align 8
  store i8 0, i8* %122, align 1
  %123 = load i8*, i8** %15, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %15, align 8
  br label %125

125:                                              ; preds = %131, %121
  %126 = load i8*, i8** %15, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 32
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  br label %131

131:                                              ; preds = %130
  %132 = load i8*, i8** %15, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %15, align 8
  br label %125

134:                                              ; preds = %125
  %135 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %136 = load i8*, i8** %16, align 8
  %137 = call i32 @strncpy(i8* %135, i8* %136, i32 255)
  %138 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %139 = load i8*, i8** %15, align 8
  %140 = call i32 @strncpy(i8* %138, i8* %139, i32 255)
  %141 = load i8*, i8** %15, align 8
  store i8* %141, i8** %16, align 8
  %142 = load i8*, i8** %15, align 8
  %143 = call i8* @strchr(i8* %142, i8 signext 44)
  store i8* %143, i8** %15, align 8
  %144 = load i8*, i8** %15, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %166

146:                                              ; preds = %134
  %147 = load i8*, i8** %15, align 8
  store i8 0, i8* %147, align 1
  %148 = load i8*, i8** %15, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %15, align 8
  br label %150

150:                                              ; preds = %156, %146
  %151 = load i8*, i8** %15, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 32
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  br label %156

156:                                              ; preds = %155
  %157 = load i8*, i8** %15, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %15, align 8
  br label %150

159:                                              ; preds = %150
  %160 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %161 = load i8*, i8** %16, align 8
  %162 = call i32 @strncpy(i8* %160, i8* %161, i32 255)
  %163 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %164 = load i8*, i8** %15, align 8
  %165 = call i32 @strncpy(i8* %163, i8* %164, i32 255)
  br label %166

166:                                              ; preds = %159, %134
  br label %167

167:                                              ; preds = %166, %116
  br label %168

168:                                              ; preds = %167, %53
  %169 = getelementptr inbounds [4 x i8*], [4 x i8*]* %17, i64 0, i64 0
  %170 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8* %170, i8** %169, align 8
  %171 = getelementptr inbounds i8*, i8** %169, i64 1
  %172 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  store i8* %172, i8** %171, align 8
  %173 = getelementptr inbounds i8*, i8** %171, i64 1
  %174 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  store i8* %174, i8** %173, align 8
  %175 = getelementptr inbounds i8*, i8** %173, i64 1
  %176 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  store i8* %176, i8** %175, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %12, align 4
  br label %177

177:                                              ; preds = %192, %168
  %178 = load i32, i32* %12, align 4
  %179 = icmp slt i32 %178, 4
  br i1 %179, label %180, label %195

180:                                              ; preds = %177
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [4 x i8*], [4 x i8*]* %17, i64 0, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 0
  %186 = load i8, i8* %185, align 1
  %187 = icmp ne i8 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %180
  %189 = load i32, i32* %18, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %18, align 4
  br label %191

191:                                              ; preds = %188, %180
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %12, align 4
  br label %177

195:                                              ; preds = %177
  %196 = load i32, i32* %18, align 4
  %197 = getelementptr inbounds [4 x i8*], [4 x i8*]* %17, i64 0, i64 0
  %198 = load i8*, i8** %7, align 8
  %199 = call i32 @replace(i32 %196, i8** %197, i8* %198)
  br label %200

200:                                              ; preds = %195, %32
  %201 = load i8*, i8** %7, align 8
  %202 = call i8* @strdup(i8* %201)
  store i8* %202, i8** %19, align 8
  %203 = load i8*, i8** %19, align 8
  %204 = call i8* @r_str_replace(i8* %203, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i8* %204, i8** %19, align 8
  %205 = load i8*, i8** %19, align 8
  %206 = call i8* @r_str_replace(i8* %205, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 1)
  store i8* %206, i8** %19, align 8
  %207 = load i8*, i8** %7, align 8
  %208 = load i8*, i8** %19, align 8
  %209 = call i32 @strcpy(i8* %207, i8* %208)
  %210 = load i8*, i8** %19, align 8
  %211 = call i32 @free(i8* %210)
  %212 = load i8*, i8** %14, align 8
  %213 = call i32 @free(i8* %212)
  store i32 1, i32* %4, align 4
  br label %214

214:                                              ; preds = %200, %112, %31, %25
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @replace(i32, i8**, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @r_str_replace(i8*, i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
