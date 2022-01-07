; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_add_param_to_tree.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_add_param_to_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_parameter = type { i8*, i8*, i32, i32, %struct.d3dx_parameter*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.d3dx_parameter* }

@.str = private unnamed_addr constant [65 x i8] c"Adding parameter %p (%s - parent %p, element %u) to the rbtree.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"[%u]\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Full name is %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx9_base_effect*, %struct.d3dx_parameter*, %struct.d3dx_parameter*, i8, i32)* @add_param_to_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_param_to_tree(%struct.d3dx9_base_effect* %0, %struct.d3dx_parameter* %1, %struct.d3dx_parameter* %2, i8 signext %3, i32 %4) #0 {
  %6 = alloca %struct.d3dx9_base_effect*, align 8
  %7 = alloca %struct.d3dx_parameter*, align 8
  %8 = alloca %struct.d3dx_parameter*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [16 x i8], align 16
  %18 = alloca i32, align 4
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %6, align 8
  store %struct.d3dx_parameter* %1, %struct.d3dx_parameter** %7, align 8
  store %struct.d3dx_parameter* %2, %struct.d3dx_parameter** %8, align 8
  store i8 %3, i8* %9, align 1
  store i32 %4, i32* %10, align 4
  %19 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %20 = icmp ne %struct.d3dx_parameter* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %23 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  br label %26

25:                                               ; preds = %5
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i8* [ %24, %21 ], [ null, %25 ]
  store i8* %27, i8** %11, align 8
  %28 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %29 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %30 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @debugstr_a(i8* %31)
  %33 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), %struct.d3dx_parameter* %28, i32 %32, %struct.d3dx_parameter* %33, i32 %34)
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %109

38:                                               ; preds = %26
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @strlen(i8* %39)
  store i32 %40, i32* %13, align 4
  %41 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %42 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strlen(i8* %43)
  store i32 %44, i32* %14, align 4
  %45 = load i8, i8* %9, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 91
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @sprintf(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %53 = call i32 @strlen(i8* %52)
  store i32 %53, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %58

54:                                               ; preds = %38
  %55 = load i8, i8* %9, align 1
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  store i8 %55, i8* %56, align 16
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 1
  store i8 0, i8* %57, align 1
  store i32 1, i32* %15, align 4
  br label %58

58:                                               ; preds = %54, %48
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %15, align 4
  %61 = add i32 %59, %60
  %62 = load i32, i32* %14, align 4
  %63 = add i32 %61, %62
  %64 = add i32 %63, 1
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = call i8* @heap_alloc(i32 %65)
  %67 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %68 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = icmp ne i8* %66, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %58
  %71 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %217

72:                                               ; preds = %58
  %73 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %74 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @memcpy(i8* %75, i8* %76, i32 %77)
  %79 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %80 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @memcpy(i8* %84, i8* %85, i32 %86)
  %88 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %89 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i32, i32* %15, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %98 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @memcpy(i8* %96, i8* %99, i32 %100)
  %102 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %103 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %16, align 4
  %106 = sub i32 %105, 1
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8 0, i8* %108, align 1
  br label %131

109:                                              ; preds = %26
  %110 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %111 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @strlen(i8* %112)
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %18, align 4
  %115 = load i32, i32* %18, align 4
  %116 = call i8* @heap_alloc(i32 %115)
  %117 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %118 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  %119 = icmp ne i8* %116, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %109
  %121 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %217

122:                                              ; preds = %109
  %123 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %124 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %127 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* %18, align 4
  %130 = call i32 @memcpy(i8* %125, i8* %128, i32 %129)
  br label %131

131:                                              ; preds = %122, %72
  %132 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %133 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %134)
  %136 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %6, align 8
  %137 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %136, i32 0, i32 0
  %138 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %139 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %142 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %141, i32 0, i32 6
  %143 = call i32 @wine_rb_put(i32* %137, i8* %140, i32* %142)
  %144 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %145 = call i64 @is_top_level_parameter(%struct.d3dx_parameter* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %171

147:                                              ; preds = %131
  store i32 0, i32* %12, align 4
  br label %148

148:                                              ; preds = %167, %147
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %151 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %150, i32 0, i32 5
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ult i32 %149, %154
  br i1 %155, label %156, label %170

156:                                              ; preds = %148
  %157 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %6, align 8
  %158 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %159 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %158, i32 0, i32 5
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %162, i64 %164
  %166 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  call void @add_param_to_tree(%struct.d3dx9_base_effect* %157, %struct.d3dx_parameter* %165, %struct.d3dx_parameter* %166, i8 signext 64, i32 0)
  br label %167

167:                                              ; preds = %156
  %168 = load i32, i32* %12, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %12, align 4
  br label %148

170:                                              ; preds = %148
  br label %171

171:                                              ; preds = %170, %131
  %172 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %173 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %197

176:                                              ; preds = %171
  store i32 0, i32* %12, align 4
  br label %177

177:                                              ; preds = %193, %176
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %180 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = icmp ult i32 %178, %181
  br i1 %182, label %183, label %196

183:                                              ; preds = %177
  %184 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %6, align 8
  %185 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %186 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %185, i32 0, i32 4
  %187 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %186, align 8
  %188 = load i32, i32* %12, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %187, i64 %189
  %191 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %192 = load i32, i32* %12, align 4
  call void @add_param_to_tree(%struct.d3dx9_base_effect* %184, %struct.d3dx_parameter* %190, %struct.d3dx_parameter* %191, i8 signext 91, i32 %192)
  br label %193

193:                                              ; preds = %183
  %194 = load i32, i32* %12, align 4
  %195 = add i32 %194, 1
  store i32 %195, i32* %12, align 4
  br label %177

196:                                              ; preds = %177
  br label %217

197:                                              ; preds = %171
  store i32 0, i32* %12, align 4
  br label %198

198:                                              ; preds = %213, %197
  %199 = load i32, i32* %12, align 4
  %200 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %201 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = icmp ult i32 %199, %202
  br i1 %203, label %204, label %216

204:                                              ; preds = %198
  %205 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %6, align 8
  %206 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  %207 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %206, i32 0, i32 4
  %208 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %207, align 8
  %209 = load i32, i32* %12, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %208, i64 %210
  %212 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %7, align 8
  call void @add_param_to_tree(%struct.d3dx9_base_effect* %205, %struct.d3dx_parameter* %211, %struct.d3dx_parameter* %212, i8 signext 46, i32 0)
  br label %213

213:                                              ; preds = %204
  %214 = load i32, i32* %12, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %12, align 4
  br label %198

216:                                              ; preds = %198
  br label %217

217:                                              ; preds = %70, %120, %216, %196
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @wine_rb_put(i32*, i8*, i32*) #1

declare dso_local i64 @is_top_level_parameter(%struct.d3dx_parameter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
