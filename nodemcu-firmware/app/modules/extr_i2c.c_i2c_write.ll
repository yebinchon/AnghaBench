; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_i2c.c_i2c_write.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_i2c.c_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i2c = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"wrong arg type\00", align 1
@LUA_TNUMBER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"wrong arg range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_write(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @luaL_checkinteger(i32* %11, i32 1)
  store i32 %12, i32* %4, align 4
  store i64 0, i64* %9, align 8
  %13 = load i32, i32* @i2c, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @MOD_CHECK_ID(i32 %13, i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @lua_gettop(i32* %16)
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @luaL_error(i32* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %2, align 4
  br label %146

22:                                               ; preds = %1
  store i32 2, i32* %10, align 4
  br label %23

23:                                               ; preds = %139, %22
  %24 = load i32, i32* %10, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_gettop(i32* %25)
  %27 = icmp ule i32 %24, %26
  br i1 %27, label %28, label %142

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @lua_type(i32* %29, i32 %30)
  %32 = load i64, i64* @LUA_TNUMBER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %28
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @luaL_checkinteger(i32* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %41, 255
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %34
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @luaL_error(i32* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %45, i32* %2, align 4
  br label %146

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %8, align 4
  %49 = trunc i32 %48 to i8
  %50 = call i32 @platform_i2c_send_byte(i32 %47, i8 signext %49)
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %142

53:                                               ; preds = %46
  %54 = load i64, i64* %9, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %9, align 8
  br label %138

56:                                               ; preds = %28
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i64 @lua_istable(i32* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %107

61:                                               ; preds = %56
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i64 @lua_objlen(i32* %62, i32 %63)
  store i64 %64, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %65

65:                                               ; preds = %95, %61
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %98

69:                                               ; preds = %65
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, 1
  %74 = call i32 @lua_rawgeti(i32* %70, i32 %71, i64 %73)
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @luaL_checkinteger(i32* %75, i32 -1)
  store i32 %76, i32* %8, align 4
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @lua_pop(i32* %77, i32 1)
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %69
  %82 = load i32, i32* %8, align 4
  %83 = icmp sgt i32 %82, 255
  br i1 %83, label %84, label %87

84:                                               ; preds = %81, %69
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @luaL_error(i32* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %86, i32* %2, align 4
  br label %146

87:                                               ; preds = %81
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %8, align 4
  %90 = trunc i32 %89 to i8
  %91 = call i32 @platform_i2c_send_byte(i32 %88, i8 signext %90)
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %98

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %7, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %7, align 8
  br label %65

98:                                               ; preds = %93, %65
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* %9, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %9, align 8
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* %6, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %142

106:                                              ; preds = %98
  br label %137

107:                                              ; preds = %56
  %108 = load i32*, i32** %3, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i8* @luaL_checklstring(i32* %108, i32 %109, i64* %6)
  store i8* %110, i8** %5, align 8
  store i64 0, i64* %7, align 8
  br label %111

111:                                              ; preds = %125, %107
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* %6, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = load i32, i32* %4, align 4
  %117 = load i8*, i8** %5, align 8
  %118 = load i64, i64* %7, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = call i32 @platform_i2c_send_byte(i32 %116, i8 signext %120)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %128

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %7, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %7, align 8
  br label %111

128:                                              ; preds = %123, %111
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* %9, align 8
  %131 = add i64 %130, %129
  store i64 %131, i64* %9, align 8
  %132 = load i64, i64* %7, align 8
  %133 = load i64, i64* %6, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %142

136:                                              ; preds = %128
  br label %137

137:                                              ; preds = %136, %106
  br label %138

138:                                              ; preds = %137, %53
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %10, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %10, align 4
  br label %23

142:                                              ; preds = %135, %105, %52, %23
  %143 = load i32*, i32** %3, align 8
  %144 = load i64, i64* %9, align 8
  %145 = call i32 @lua_pushinteger(i32* %143, i64 %144)
  store i32 1, i32* %2, align 4
  br label %146

146:                                              ; preds = %142, %84, %43, %19
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @MOD_CHECK_ID(i32, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @platform_i2c_send_byte(i32, i8 signext) #1

declare dso_local i64 @lua_istable(i32*, i32) #1

declare dso_local i64 @lua_objlen(i32*, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
