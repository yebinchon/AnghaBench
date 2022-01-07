; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_java_get_class_names_from_input.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_java_get_class_names_from_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32*, i8**, i32*)* @r_cmd_java_get_class_names_from_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_cmd_java_get_class_names_from_input(i8* %0, i8** %1, i32* %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %5
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strlen(i8* %25)
  br label %28

27:                                               ; preds = %19, %5
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i32 [ %26, %24 ], [ 0, %27 ]
  store i32 %29, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %30 = load i8**, i8*** %8, align 8
  %31 = icmp ne i8** %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i8**, i8*** %8, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %6, align 4
  br label %201

38:                                               ; preds = %32
  %39 = load i8**, i8*** %10, align 8
  %40 = icmp ne i8** %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i8**, i8*** %10, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %6, align 4
  br label %201

47:                                               ; preds = %41
  %48 = load i32*, i32** %11, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32*, i32** %9, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %6, align 4
  br label %201

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  %58 = load i8**, i8*** %10, align 8
  store i8* null, i8** %58, align 8
  %59 = load i32*, i32** %9, align 8
  store i32 0, i32* %59, align 4
  %60 = load i8*, i8** %12, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %199

62:                                               ; preds = %57
  %63 = load i8*, i8** %12, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %199

67:                                               ; preds = %62
  %68 = load i32, i32* %13, align 4
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %199

70:                                               ; preds = %67
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i8* @r_cmd_java_consumetok(i8* %71, i8 signext 32, i32 %72)
  store i8* %73, i8** %12, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load i8*, i8** %12, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** %12, align 8
  %83 = call i8* @r_cmd_java_strtok(i8* %82, i8 signext 32, i32 -1)
  br label %85

84:                                               ; preds = %76, %70
  br label %85

85:                                               ; preds = %84, %81
  %86 = phi i8* [ %83, %81 ], [ null, %84 ]
  store i8* %86, i8** %15, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %128

89:                                               ; preds = %85
  %90 = load i8*, i8** %15, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %128

92:                                               ; preds = %89
  %93 = load i8*, i8** %12, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = icmp ne i8* %93, %94
  br i1 %95, label %96, label %128

96:                                               ; preds = %92
  %97 = load i8*, i8** %15, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = add nsw i64 %101, 1
  %103 = trunc i64 %102 to i32
  %104 = load i32*, i32** %9, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @malloc(i32 %106)
  %108 = load i8**, i8*** %8, align 8
  store i8* %107, i8** %108, align 8
  %109 = load i8**, i8*** %8, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i8*, i8** %12, align 8
  %114 = call i32 @snprintf(i8* %110, i32 %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %113)
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %116, 1
  %118 = load i32, i32* %13, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %96
  %121 = load i32, i32* %13, align 4
  %122 = load i32*, i32** %9, align 8
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %121, %123
  br label %126

125:                                              ; preds = %96
  br label %126

126:                                              ; preds = %125, %120
  %127 = phi i32 [ %124, %120 ], [ 0, %125 ]
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %126, %92, %89, %85
  %129 = load i8**, i8*** %8, align 8
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %198

132:                                              ; preds = %128
  %133 = load i32, i32* %13, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %198

135:                                              ; preds = %132
  %136 = load i8*, i8** %15, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = load i32, i32* %13, align 4
  %139 = call i8* @r_cmd_java_consumetok(i8* %137, i8 signext 32, i32 %138)
  store i8* %139, i8** %12, align 8
  %140 = load i8*, i8** %12, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %150

142:                                              ; preds = %135
  %143 = load i8*, i8** %12, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i8*, i8** %12, align 8
  %149 = call i8* @r_cmd_java_strtok(i8* %148, i8 signext 32, i32 -1)
  br label %151

150:                                              ; preds = %142, %135
  br label %151

151:                                              ; preds = %150, %147
  %152 = phi i8* [ %149, %147 ], [ null, %150 ]
  store i8* %152, i8** %15, align 8
  %153 = load i8*, i8** %15, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %168, label %155

155:                                              ; preds = %151
  %156 = load i8*, i8** %12, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %168

158:                                              ; preds = %155
  %159 = load i8*, i8** %12, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load i8*, i8** %12, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  store i8* %167, i8** %15, align 8
  br label %168

168:                                              ; preds = %163, %158, %155, %151
  %169 = load i8*, i8** %12, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %197

171:                                              ; preds = %168
  %172 = load i8*, i8** %15, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %197

174:                                              ; preds = %171
  %175 = load i8*, i8** %12, align 8
  %176 = load i8*, i8** %15, align 8
  %177 = icmp ne i8* %175, %176
  br i1 %177, label %178, label %197

178:                                              ; preds = %174
  %179 = load i8*, i8** %15, align 8
  %180 = load i8*, i8** %12, align 8
  %181 = ptrtoint i8* %179 to i64
  %182 = ptrtoint i8* %180 to i64
  %183 = sub i64 %181, %182
  %184 = add nsw i64 %183, 1
  %185 = trunc i64 %184 to i32
  %186 = load i32*, i32** %11, align 8
  store i32 %185, i32* %186, align 4
  %187 = load i32*, i32** %11, align 8
  %188 = load i32, i32* %187, align 4
  %189 = call i8* @malloc(i32 %188)
  %190 = load i8**, i8*** %10, align 8
  store i8* %189, i8** %190, align 8
  %191 = load i8**, i8*** %10, align 8
  %192 = load i8*, i8** %191, align 8
  %193 = load i32*, i32** %11, align 8
  %194 = load i32, i32* %193, align 4
  %195 = load i8*, i8** %12, align 8
  %196 = call i32 @snprintf(i8* %192, i32 %194, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %195)
  store i32 1, i32* %14, align 4
  br label %197

197:                                              ; preds = %178, %174, %171, %168
  br label %198

198:                                              ; preds = %197, %132, %128
  br label %199

199:                                              ; preds = %198, %67, %62, %57
  %200 = load i32, i32* %14, align 4
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %199, %53, %45, %36
  %202 = load i32, i32* %6, align 4
  ret i32 %202
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @r_cmd_java_consumetok(i8*, i8 signext, i32) #1

declare dso_local i8* @r_cmd_java_strtok(i8*, i8 signext, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
