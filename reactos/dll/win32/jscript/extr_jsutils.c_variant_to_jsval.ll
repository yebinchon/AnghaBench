; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsutils.c_variant_to_jsval.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsutils.c_variant_to_jsval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VT_VARIANT = common dso_local global i32 0, align 4
@VT_BYREF = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@IID_IDispatch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @variant_to_jsval(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @V_VT(i32* %9)
  %11 = load i32, i32* @VT_VARIANT, align 4
  %12 = load i32, i32* @VT_BYREF, align 4
  %13 = or i32 %11, %12
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @V_VARIANTREF(i32* %16)
  store i32* %17, i32** %4, align 8
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @V_VT(i32* %19)
  switch i32 %20, label %155 [
    i32 140, label %21
    i32 135, label %25
    i32 143, label %29
    i32 137, label %35
    i32 133, label %41
    i32 142, label %47
    i32 141, label %70
    i32 139, label %84
    i32 132, label %90
    i32 138, label %96
    i32 131, label %102
    i32 136, label %108
    i32 130, label %114
    i32 129, label %120
    i32 134, label %126
    i32 128, label %132
  ]

21:                                               ; preds = %18
  %22 = call i32 (...) @jsval_undefined()
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @S_OK, align 4
  store i32 %24, i32* %3, align 4
  br label %159

25:                                               ; preds = %18
  %26 = call i32 (...) @jsval_null()
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @S_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %159

29:                                               ; preds = %18
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @V_BOOL(i32* %30)
  %32 = call i32 @jsval_bool(i32 %31)
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @S_OK, align 4
  store i32 %34, i32* %3, align 4
  br label %159

35:                                               ; preds = %18
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @V_I4(i32* %36)
  %38 = call i32 @jsval_number(i32 %37)
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @S_OK, align 4
  store i32 %40, i32* %3, align 4
  br label %159

41:                                               ; preds = %18
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @V_R8(i32* %42)
  %44 = call i32 @jsval_number(i32 %43)
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @S_OK, align 4
  store i32 %46, i32* %3, align 4
  br label %159

47:                                               ; preds = %18
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @V_BSTR(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @V_BSTR(i32* %52)
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @V_BSTR(i32* %54)
  %56 = call i32 @SysStringLen(i32 %55)
  %57 = call i32* @jsstr_alloc_len(i32 %53, i32 %56)
  store i32* %57, i32** %6, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %51
  %61 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %61, i32* %3, align 4
  br label %159

62:                                               ; preds = %51
  br label %65

63:                                               ; preds = %47
  %64 = call i32* (...) @jsstr_null_bstr()
  store i32* %64, i32** %6, align 8
  br label %65

65:                                               ; preds = %63, %62
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @jsval_string(i32* %66)
  %68 = load i32*, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @S_OK, align 4
  store i32 %69, i32* %3, align 4
  br label %159

70:                                               ; preds = %18
  %71 = load i32*, i32** %4, align 8
  %72 = call i32* @V_DISPATCH(i32* %71)
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32*, i32** %4, align 8
  %76 = call i32* @V_DISPATCH(i32* %75)
  %77 = call i32 @IDispatch_AddRef(i32* %76)
  br label %78

78:                                               ; preds = %74, %70
  %79 = load i32*, i32** %4, align 8
  %80 = call i32* @V_DISPATCH(i32* %79)
  %81 = call i32 @jsval_disp(i32* %80)
  %82 = load i32*, i32** %5, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @S_OK, align 4
  store i32 %83, i32* %3, align 4
  br label %159

84:                                               ; preds = %18
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @V_I1(i32* %85)
  %87 = call i32 @jsval_number(i32 %86)
  %88 = load i32*, i32** %5, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @S_OK, align 4
  store i32 %89, i32* %3, align 4
  br label %159

90:                                               ; preds = %18
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @V_UI1(i32* %91)
  %93 = call i32 @jsval_number(i32 %92)
  %94 = load i32*, i32** %5, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* @S_OK, align 4
  store i32 %95, i32* %3, align 4
  br label %159

96:                                               ; preds = %18
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @V_I2(i32* %97)
  %99 = call i32 @jsval_number(i32 %98)
  %100 = load i32*, i32** %5, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @S_OK, align 4
  store i32 %101, i32* %3, align 4
  br label %159

102:                                              ; preds = %18
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @V_UI2(i32* %103)
  %105 = call i32 @jsval_number(i32 %104)
  %106 = load i32*, i32** %5, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* @S_OK, align 4
  store i32 %107, i32* %3, align 4
  br label %159

108:                                              ; preds = %18
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @V_INT(i32* %109)
  %111 = call i32 @jsval_number(i32 %110)
  %112 = load i32*, i32** %5, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* @S_OK, align 4
  store i32 %113, i32* %3, align 4
  br label %159

114:                                              ; preds = %18
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @V_UI4(i32* %115)
  %117 = call i32 @jsval_number(i32 %116)
  %118 = load i32*, i32** %5, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* @S_OK, align 4
  store i32 %119, i32* %3, align 4
  br label %159

120:                                              ; preds = %18
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @V_UI8(i32* %121)
  %123 = call i32 @jsval_number(i32 %122)
  %124 = load i32*, i32** %5, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* @S_OK, align 4
  store i32 %125, i32* %3, align 4
  br label %159

126:                                              ; preds = %18
  %127 = load i32*, i32** %4, align 8
  %128 = call i32 @V_R4(i32* %127)
  %129 = call i32 @jsval_number(i32 %128)
  %130 = load i32*, i32** %5, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* @S_OK, align 4
  store i32 %131, i32* %3, align 4
  br label %159

132:                                              ; preds = %18
  %133 = load i32*, i32** %4, align 8
  %134 = call i32 @V_UNKNOWN(i32* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %132
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @V_UNKNOWN(i32* %137)
  %139 = bitcast i32** %7 to i8**
  %140 = call i32 @IUnknown_QueryInterface(i32 %138, i32* @IID_IDispatch, i8** %139)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @SUCCEEDED(i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %136
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @jsval_disp(i32* %145)
  %147 = load i32*, i32** %5, align 8
  store i32 %146, i32* %147, align 4
  %148 = load i32, i32* @S_OK, align 4
  store i32 %148, i32* %3, align 4
  br label %159

149:                                              ; preds = %136
  br label %154

150:                                              ; preds = %132
  %151 = call i32 @jsval_disp(i32* null)
  %152 = load i32*, i32** %5, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* @S_OK, align 4
  store i32 %153, i32* %3, align 4
  br label %159

154:                                              ; preds = %149
  br label %155

155:                                              ; preds = %18, %154
  %156 = load i32*, i32** %5, align 8
  %157 = load i32*, i32** %4, align 8
  %158 = call i32 @jsval_variant(i32* %156, i32* %157)
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %155, %150, %144, %126, %120, %114, %108, %102, %96, %90, %84, %78, %65, %60, %41, %35, %29, %25, %21
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @V_VT(i32*) #1

declare dso_local i32* @V_VARIANTREF(i32*) #1

declare dso_local i32 @jsval_undefined(...) #1

declare dso_local i32 @jsval_null(...) #1

declare dso_local i32 @jsval_bool(i32) #1

declare dso_local i32 @V_BOOL(i32*) #1

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i32 @V_I4(i32*) #1

declare dso_local i32 @V_R8(i32*) #1

declare dso_local i32 @V_BSTR(i32*) #1

declare dso_local i32* @jsstr_alloc_len(i32, i32) #1

declare dso_local i32 @SysStringLen(i32) #1

declare dso_local i32* @jsstr_null_bstr(...) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32* @V_DISPATCH(i32*) #1

declare dso_local i32 @IDispatch_AddRef(i32*) #1

declare dso_local i32 @jsval_disp(i32*) #1

declare dso_local i32 @V_I1(i32*) #1

declare dso_local i32 @V_UI1(i32*) #1

declare dso_local i32 @V_I2(i32*) #1

declare dso_local i32 @V_UI2(i32*) #1

declare dso_local i32 @V_INT(i32*) #1

declare dso_local i32 @V_UI4(i32*) #1

declare dso_local i32 @V_UI8(i32*) #1

declare dso_local i32 @V_R4(i32*) #1

declare dso_local i32 @V_UNKNOWN(i32*) #1

declare dso_local i32 @IUnknown_QueryInterface(i32, i32*, i8**) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @jsval_variant(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
