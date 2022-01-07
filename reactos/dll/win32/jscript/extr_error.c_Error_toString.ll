; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_error.c_Error_toString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_error.c_Error_toString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@Error_toString.object_errorW = internal constant [15 x i8] c"[object Error]\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@nameW = common dso_local global i32 0, align 4
@messageW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32, i32, i32*, i32*)* @Error_toString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Error_toString(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %24 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %9, align 8
  %26 = call i32* @get_jsdisp(i32* %25)
  store i32* %26, i32** %14, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %6
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %49

34:                                               ; preds = %29, %6
  %35 = load i32*, i32** %13, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = call i32* @jsstr_alloc(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @Error_toString.object_errorW, i64 0, i64 0))
  store i32* %38, i32** %20, align 8
  %39 = load i32*, i32** %20, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %42, i32* %7, align 4
  br label %199

43:                                               ; preds = %37
  %44 = load i32*, i32** %20, align 8
  %45 = call i32 @jsval_string(i32* %44)
  %46 = load i32*, i32** %13, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %34
  %48 = load i32, i32* @S_OK, align 4
  store i32 %48, i32* %7, align 4
  br label %199

49:                                               ; preds = %29
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* @nameW, align 4
  %52 = call i32 @jsdisp_propget_name(i32* %50, i32 %51, i32* %18)
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %19, align 4
  %54 = call i64 @FAILED(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %19, align 4
  store i32 %57, i32* %7, align 4
  br label %199

58:                                               ; preds = %49
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @is_undefined(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %64 = load i32, i32* %18, align 4
  %65 = call i32 @to_string(%struct.TYPE_4__* %63, i32 %64, i32** %15)
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %18, align 4
  %67 = call i32 @jsval_release(i32 %66)
  %68 = load i32, i32* %19, align 4
  %69 = call i64 @FAILED(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %19, align 4
  store i32 %72, i32* %7, align 4
  br label %199

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %58
  %75 = load i32*, i32** %14, align 8
  %76 = load i32, i32* @messageW, align 4
  %77 = call i32 @jsdisp_propget_name(i32* %75, i32 %76, i32* %18)
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %19, align 4
  %79 = call i64 @SUCCEEDED(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %74
  %82 = load i32, i32* %18, align 4
  %83 = call i32 @is_undefined(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %87 = load i32, i32* %18, align 4
  %88 = call i32 @to_string(%struct.TYPE_4__* %86, i32 %87, i32** %16)
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %18, align 4
  %90 = call i32 @jsval_release(i32 %89)
  br label %91

91:                                               ; preds = %85, %81
  br label %92

92:                                               ; preds = %91, %74
  %93 = load i32, i32* %19, align 4
  %94 = call i64 @SUCCEEDED(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %164

96:                                               ; preds = %92
  %97 = load i32*, i32** %15, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32*, i32** %15, align 8
  %101 = call i32 @jsstr_length(i32* %100)
  br label %103

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %102, %99
  %104 = phi i32 [ %101, %99 ], [ 0, %102 ]
  store i32 %104, i32* %21, align 4
  %105 = load i32*, i32** %16, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32*, i32** %16, align 8
  %109 = call i32 @jsstr_length(i32* %108)
  br label %111

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110, %107
  %112 = phi i32 [ %109, %107 ], [ 0, %110 ]
  store i32 %112, i32* %22, align 4
  %113 = load i32, i32* %21, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %149

115:                                              ; preds = %111
  %116 = load i32, i32* %22, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %149

118:                                              ; preds = %115
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* %22, align 4
  %121 = add i32 %119, %120
  %122 = add i32 %121, 2
  %123 = call i32* @jsstr_alloc_buf(i32 %122, i8** %23)
  store i32* %123, i32** %17, align 8
  %124 = load i32*, i32** %17, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %146

126:                                              ; preds = %118
  %127 = load i32*, i32** %15, align 8
  %128 = load i8*, i8** %23, align 8
  %129 = call i32 @jsstr_flush(i32* %127, i8* %128)
  %130 = load i8*, i8** %23, align 8
  %131 = load i32, i32* %21, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  store i8 58, i8* %133, align 1
  %134 = load i8*, i8** %23, align 8
  %135 = load i32, i32* %21, align 4
  %136 = add i32 %135, 1
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  store i8 32, i8* %138, align 1
  %139 = load i32*, i32** %16, align 8
  %140 = load i8*, i8** %23, align 8
  %141 = load i32, i32* %21, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = getelementptr inbounds i8, i8* %143, i64 2
  %145 = call i32 @jsstr_flush(i32* %139, i8* %144)
  br label %148

146:                                              ; preds = %118
  %147 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %147, i32* %19, align 4
  br label %148

148:                                              ; preds = %146, %126
  br label %163

149:                                              ; preds = %115, %111
  %150 = load i32, i32* %21, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = load i32*, i32** %15, align 8
  store i32* %153, i32** %17, align 8
  store i32* null, i32** %15, align 8
  br label %162

154:                                              ; preds = %149
  %155 = load i32, i32* %22, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = load i32*, i32** %16, align 8
  store i32* %158, i32** %17, align 8
  store i32* null, i32** %16, align 8
  br label %161

159:                                              ; preds = %154
  %160 = call i32* @jsstr_alloc(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @Error_toString.object_errorW, i64 0, i64 0))
  store i32* %160, i32** %17, align 8
  br label %161

161:                                              ; preds = %159, %157
  br label %162

162:                                              ; preds = %161, %152
  br label %163

163:                                              ; preds = %162, %148
  br label %164

164:                                              ; preds = %163, %92
  %165 = load i32*, i32** %16, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32*, i32** %16, align 8
  %169 = call i32 @jsstr_release(i32* %168)
  br label %170

170:                                              ; preds = %167, %164
  %171 = load i32*, i32** %15, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32*, i32** %15, align 8
  %175 = call i32 @jsstr_release(i32* %174)
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i32, i32* %19, align 4
  %178 = call i64 @FAILED(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i32, i32* %19, align 4
  store i32 %181, i32* %7, align 4
  br label %199

182:                                              ; preds = %176
  %183 = load i32*, i32** %17, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %186, i32* %7, align 4
  br label %199

187:                                              ; preds = %182
  %188 = load i32*, i32** %13, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = load i32*, i32** %17, align 8
  %192 = call i32 @jsval_string(i32* %191)
  %193 = load i32*, i32** %13, align 8
  store i32 %192, i32* %193, align 4
  br label %197

194:                                              ; preds = %187
  %195 = load i32*, i32** %17, align 8
  %196 = call i32 @jsstr_release(i32* %195)
  br label %197

197:                                              ; preds = %194, %190
  %198 = load i32, i32* @S_OK, align 4
  store i32 %198, i32* %7, align 4
  br label %199

199:                                              ; preds = %197, %185, %180, %71, %56, %47, %41
  %200 = load i32, i32* %7, align 4
  ret i32 %200
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32* @get_jsdisp(i32*) #1

declare dso_local i32* @jsstr_alloc(i8*) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32 @jsdisp_propget_name(i32*, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @is_undefined(i32) #1

declare dso_local i32 @to_string(%struct.TYPE_4__*, i32, i32**) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @jsstr_length(i32*) #1

declare dso_local i32* @jsstr_alloc_buf(i32, i8**) #1

declare dso_local i32 @jsstr_flush(i32*, i8*) #1

declare dso_local i32 @jsstr_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
