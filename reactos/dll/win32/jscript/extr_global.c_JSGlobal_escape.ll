; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_global.c_JSGlobal_escape.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_global.c_JSGlobal_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @JSGlobal_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSGlobal_escape(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 0, i64* %18, align 8
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %6
  %25 = load i32*, i32** %13, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = call i32* (...) @jsstr_undefined()
  %29 = call i32 @jsval_string(i32* %28)
  %30 = load i32*, i32** %13, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* @S_OK, align 4
  store i32 %32, i32* %7, align 4
  br label %187

33:                                               ; preds = %6
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @to_flat_string(i32* %34, i32 %37, i32** %15, i32** %17)
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* %20, align 4
  %40 = call i64 @FAILED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %20, align 4
  store i32 %43, i32* %7, align 4
  br label %187

44:                                               ; preds = %33
  %45 = load i32*, i32** %17, align 8
  store i32* %45, i32** %16, align 8
  br label %46

46:                                               ; preds = %70, %44
  %47 = load i32*, i32** %16, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = load i32*, i32** %16, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 255
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* %18, align 8
  %56 = add nsw i64 %55, 6
  store i64 %56, i64* %18, align 8
  br label %69

57:                                               ; preds = %50
  %58 = load i32*, i32** %16, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @is_ecma_nonblank(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i64, i64* %18, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %18, align 8
  br label %68

65:                                               ; preds = %57
  %66 = load i64, i64* %18, align 8
  %67 = add nsw i64 %66, 3
  store i64 %67, i64* %18, align 8
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %54
  br label %70

70:                                               ; preds = %69
  %71 = load i32*, i32** %16, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %16, align 8
  br label %46

73:                                               ; preds = %46
  %74 = load i64, i64* %18, align 8
  %75 = call i32* @jsstr_alloc_buf(i64 %74, i32** %19)
  store i32* %75, i32** %14, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = load i32*, i32** %15, align 8
  %80 = call i32 @jsstr_release(i32* %79)
  %81 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %81, i32* %7, align 4
  br label %187

82:                                               ; preds = %73
  store i64 0, i64* %18, align 8
  %83 = load i32*, i32** %17, align 8
  store i32* %83, i32** %16, align 8
  br label %84

84:                                               ; preds = %170, %82
  %85 = load i32*, i32** %16, align 8
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %173

88:                                               ; preds = %84
  %89 = load i32*, i32** %16, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %90, 255
  br i1 %91, label %92, label %135

92:                                               ; preds = %88
  %93 = load i32*, i32** %19, align 8
  %94 = load i64, i64* %18, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %18, align 8
  %96 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 37, i32* %96, align 4
  %97 = load i32*, i32** %19, align 8
  %98 = load i64, i64* %18, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %18, align 8
  %100 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 117, i32* %100, align 4
  %101 = load i32*, i32** %16, align 8
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 12
  %104 = call i32 @int_to_char(i32 %103)
  %105 = load i32*, i32** %19, align 8
  %106 = load i64, i64* %18, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %18, align 8
  %108 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32 %104, i32* %108, align 4
  %109 = load i32*, i32** %16, align 8
  %110 = load i32, i32* %109, align 4
  %111 = ashr i32 %110, 8
  %112 = and i32 %111, 15
  %113 = call i32 @int_to_char(i32 %112)
  %114 = load i32*, i32** %19, align 8
  %115 = load i64, i64* %18, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %18, align 8
  %117 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32 %113, i32* %117, align 4
  %118 = load i32*, i32** %16, align 8
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 4
  %121 = and i32 %120, 15
  %122 = call i32 @int_to_char(i32 %121)
  %123 = load i32*, i32** %19, align 8
  %124 = load i64, i64* %18, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %18, align 8
  %126 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32 %122, i32* %126, align 4
  %127 = load i32*, i32** %16, align 8
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 15
  %130 = call i32 @int_to_char(i32 %129)
  %131 = load i32*, i32** %19, align 8
  %132 = load i64, i64* %18, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %18, align 8
  %134 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32 %130, i32* %134, align 4
  br label %169

135:                                              ; preds = %88
  %136 = load i32*, i32** %16, align 8
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @is_ecma_nonblank(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load i32*, i32** %16, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %19, align 8
  %144 = load i64, i64* %18, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %18, align 8
  %146 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32 %142, i32* %146, align 4
  br label %168

147:                                              ; preds = %135
  %148 = load i32*, i32** %19, align 8
  %149 = load i64, i64* %18, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %18, align 8
  %151 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32 37, i32* %151, align 4
  %152 = load i32*, i32** %16, align 8
  %153 = load i32, i32* %152, align 4
  %154 = ashr i32 %153, 4
  %155 = call i32 @int_to_char(i32 %154)
  %156 = load i32*, i32** %19, align 8
  %157 = load i64, i64* %18, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %18, align 8
  %159 = getelementptr inbounds i32, i32* %156, i64 %157
  store i32 %155, i32* %159, align 4
  %160 = load i32*, i32** %16, align 8
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 15
  %163 = call i32 @int_to_char(i32 %162)
  %164 = load i32*, i32** %19, align 8
  %165 = load i64, i64* %18, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %18, align 8
  %167 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32 %163, i32* %167, align 4
  br label %168

168:                                              ; preds = %147, %140
  br label %169

169:                                              ; preds = %168, %92
  br label %170

170:                                              ; preds = %169
  %171 = load i32*, i32** %16, align 8
  %172 = getelementptr inbounds i32, i32* %171, i32 1
  store i32* %172, i32** %16, align 8
  br label %84

173:                                              ; preds = %84
  %174 = load i32*, i32** %15, align 8
  %175 = call i32 @jsstr_release(i32* %174)
  %176 = load i32*, i32** %13, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load i32*, i32** %14, align 8
  %180 = call i32 @jsval_string(i32* %179)
  %181 = load i32*, i32** %13, align 8
  store i32 %180, i32* %181, align 4
  br label %185

182:                                              ; preds = %173
  %183 = load i32*, i32** %14, align 8
  %184 = call i32 @jsstr_release(i32* %183)
  br label %185

185:                                              ; preds = %182, %178
  %186 = load i32, i32* @S_OK, align 4
  store i32 %186, i32* %7, align 4
  br label %187

187:                                              ; preds = %185, %78, %42, %31
  %188 = load i32, i32* %7, align 4
  ret i32 %188
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32* @jsstr_undefined(...) #1

declare dso_local i32 @to_flat_string(i32*, i32, i32**, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @is_ecma_nonblank(i32) #1

declare dso_local i32* @jsstr_alloc_buf(i64, i32**) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32 @int_to_char(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
