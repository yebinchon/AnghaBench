; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lstrlib.c_str_find_aux.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lstrlib.c_str_find_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i64, i32* }

@SPECIALS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @str_find_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_find_aux(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i8* @luaL_checklstring(i32* %16, i32 1, i64* %6)
  store i8* %17, i8** %8, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @luaL_checklstring(i32* %18, i32 2, i64* %7)
  store i8* %19, i8** %9, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @luaL_optinteger(i32* %20, i32 3, i32 1)
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @posrelat(i32 %21, i64 %22)
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp ult i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  br label %36

29:                                               ; preds = %2
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* %6, align 8
  store i64 %34, i64* %10, align 8
  br label %35

35:                                               ; preds = %33, %29
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %81

39:                                               ; preds = %36
  %40 = load i32*, i32** %4, align 8
  %41 = call i64 @lua_toboolean(i32* %40, i32 4)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* @SPECIALS, align 4
  %46 = call i32* @strpbrk(i8* %44, i32 %45)
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %81

48:                                               ; preds = %43, %39
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %10, align 8
  %54 = sub i64 %52, %53
  %55 = load i8*, i8** %9, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i8* @lmemfind(i8* %51, i64 %54, i8* %55, i64 %56)
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %80

60:                                               ; preds = %48
  %61 = load i32*, i32** %4, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = add nsw i64 %66, 1
  %68 = trunc i64 %67 to i32
  %69 = call i32 @lua_pushinteger(i32* %61, i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %75, %76
  %78 = trunc i64 %77 to i32
  %79 = call i32 @lua_pushinteger(i32* %70, i32 %78)
  store i32 2, i32* %3, align 4
  br label %153

80:                                               ; preds = %48
  br label %150

81:                                               ; preds = %43, %36
  %82 = load i8*, i8** %9, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 94
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %9, align 8
  br label %90

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %86
  %91 = phi i32 [ 1, %86 ], [ 0, %89 ]
  store i32 %91, i32* %13, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %14, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  store i32* %95, i32** %96, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i8* %97, i8** %98, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load i64, i64* %6, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i8* %101, i8** %102, align 8
  br label %103

103:                                              ; preds = %147, %90
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i64 0, i64* %104, align 8
  %105 = load i8*, i8** %14, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = call i8* @match(%struct.TYPE_4__* %12, i8* %105, i8* %106)
  store i8* %107, i8** %15, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %136

109:                                              ; preds = %103
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %109
  %113 = load i32*, i32** %4, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = add nsw i64 %118, 1
  %120 = trunc i64 %119 to i32
  %121 = call i32 @lua_pushinteger(i32* %113, i32 %120)
  %122 = load i32*, i32** %4, align 8
  %123 = load i8*, i8** %15, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = trunc i64 %127 to i32
  %129 = call i32 @lua_pushinteger(i32* %122, i32 %128)
  %130 = call i32 @push_captures(%struct.TYPE_4__* %12, i8* null, i8* null)
  %131 = add nsw i32 %130, 2
  store i32 %131, i32* %3, align 4
  br label %153

132:                                              ; preds = %109
  %133 = load i8*, i8** %14, align 8
  %134 = load i8*, i8** %15, align 8
  %135 = call i32 @push_captures(%struct.TYPE_4__* %12, i8* %133, i8* %134)
  store i32 %135, i32* %3, align 4
  br label %153

136:                                              ; preds = %103
  br label %137

137:                                              ; preds = %136
  %138 = load i8*, i8** %14, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ult i8* %138, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  br label %147

147:                                              ; preds = %143, %137
  %148 = phi i1 [ false, %137 ], [ %146, %143 ]
  br i1 %148, label %103, label %149

149:                                              ; preds = %147
  br label %150

150:                                              ; preds = %149, %80
  %151 = load i32*, i32** %4, align 8
  %152 = call i32 @lua_pushnil(i32* %151)
  store i32 1, i32* %3, align 4
  br label %153

153:                                              ; preds = %150, %132, %112, %60
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @posrelat(i32, i64) #1

declare dso_local i32 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i64 @lua_toboolean(i32*, i32) #1

declare dso_local i32* @strpbrk(i8*, i32) #1

declare dso_local i8* @lmemfind(i8*, i64, i8*, i64) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i8* @match(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @push_captures(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
