; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_encode_lua_object.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_encode_lua_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@LUA_REFNIL = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Cannot encode type %d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32, i8*, i8*)* @encode_lua_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_lua_object(i32* %0, %struct.TYPE_3__* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [8 x i8], align 1
  %20 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @luaL_buffinit(i32* %21, i32* %11)
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @luaL_addstring(i32* %11, i8* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @lua_type(i32* %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %28, 128
  br i1 %29, label %30, label %51

30:                                               ; preds = %5
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LUA_REFNIL, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @lua_rawgeti(i32* %37, i32 %38, i64 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @lua_equal(i32* %43, i32 -1, i32 -2)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 130, i32* %12, align 4
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @lua_pop(i32* %48, i32 1)
  br label %50

50:                                               ; preds = %47, %30
  br label %51

51:                                               ; preds = %50, %5
  %52 = load i32, i32* %12, align 4
  switch i32 %52, label %53 [
    i32 131, label %57
    i32 130, label %57
    i32 132, label %59
    i32 129, label %67
    i32 128, label %83
  ]

53:                                               ; preds = %51
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @luaL_error(i32* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %168

57:                                               ; preds = %51, %51
  %58 = call i32 @luaL_addstring(i32* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %168

59:                                               ; preds = %51
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @lua_toboolean(i32* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %66 = call i32 @luaL_addstring(i32* %11, i8* %65)
  br label %168

67:                                               ; preds = %51
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @lua_pushvalue(i32* %68, i32 %69)
  %71 = load i32*, i32** %6, align 8
  %72 = call i8* @lua_tolstring(i32* %71, i32 -1, i64* %13)
  store i8* %72, i8** %14, align 8
  %73 = load i64, i64* %13, align 8
  %74 = add i64 %73, 1
  %75 = call i8* @llvm.stacksave()
  store i8* %75, i8** %15, align 8
  %76 = alloca i8, i64 %74, align 16
  store i64 %74, i64* %16, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = call i32 @strcpy(i8* %76, i8* %77)
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @lua_pop(i32* %79, i32 1)
  %81 = call i32 @luaL_addstring(i32* %11, i8* %76)
  %82 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %82)
  br label %168

83:                                               ; preds = %51
  %84 = call i32 @luaL_addchar(i32* %11, i8 signext 34)
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i8* @lua_tolstring(i32* %85, i32 %86, i64* %17)
  store i8* %87, i8** %18, align 8
  br label %88

88:                                               ; preds = %161, %83
  %89 = load i64, i64* %17, align 8
  %90 = icmp ugt i64 %89, 0
  br i1 %90, label %91, label %166

91:                                               ; preds = %88
  %92 = load i8*, i8** %18, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = and i32 %94, 255
  %96 = icmp slt i32 %95, 32
  br i1 %96, label %97, label %149

97:                                               ; preds = %91
  %98 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  store i8 92, i8* %98, align 1
  %99 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  store i8* %100, i8** %20, align 8
  %101 = load i8*, i8** %18, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  switch i32 %103, label %119 [
    i32 12, label %104
    i32 10, label %107
    i32 9, label %110
    i32 13, label %113
    i32 8, label %116
  ]

104:                                              ; preds = %97
  %105 = load i8*, i8** %20, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %20, align 8
  store i8 102, i8* %105, align 1
  br label %145

107:                                              ; preds = %97
  %108 = load i8*, i8** %20, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %20, align 8
  store i8 110, i8* %108, align 1
  br label %145

110:                                              ; preds = %97
  %111 = load i8*, i8** %20, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %20, align 8
  store i8 116, i8* %111, align 1
  br label %145

113:                                              ; preds = %97
  %114 = load i8*, i8** %20, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %20, align 8
  store i8 114, i8* %114, align 1
  br label %145

116:                                              ; preds = %97
  %117 = load i8*, i8** %20, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %20, align 8
  store i8 98, i8* %117, align 1
  br label %145

119:                                              ; preds = %97
  %120 = load i8*, i8** %20, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %20, align 8
  store i8 117, i8* %120, align 1
  %122 = load i8*, i8** %20, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %20, align 8
  store i8 48, i8* %122, align 1
  %124 = load i8*, i8** %20, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %20, align 8
  store i8 48, i8* %124, align 1
  %126 = load i8*, i8** %18, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = ashr i32 %128, 4
  %130 = and i32 %129, 15
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.4, i64 0, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = load i8*, i8** %20, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %20, align 8
  store i8 %133, i8* %134, align 1
  %136 = load i8*, i8** %18, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = and i32 %138, 15
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.4, i64 0, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = load i8*, i8** %20, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %20, align 8
  store i8 %142, i8* %143, align 1
  br label %145

145:                                              ; preds = %119, %116, %113, %110, %107, %104
  %146 = load i8*, i8** %20, align 8
  store i8 0, i8* %146, align 1
  %147 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %148 = call i32 @luaL_addstring(i32* %11, i8* %147)
  br label %161

149:                                              ; preds = %91
  %150 = load i8*, i8** %18, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 34
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = call i32 @luaL_addstring(i32* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %160

156:                                              ; preds = %149
  %157 = load i8*, i8** %18, align 8
  %158 = load i8, i8* %157, align 1
  %159 = call i32 @luaL_addchar(i32* %11, i8 signext %158)
  br label %160

160:                                              ; preds = %156, %154
  br label %161

161:                                              ; preds = %160, %145
  %162 = load i8*, i8** %18, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %18, align 8
  %164 = load i64, i64* %17, align 8
  %165 = add i64 %164, -1
  store i64 %165, i64* %17, align 8
  br label %88

166:                                              ; preds = %88
  %167 = call i32 @luaL_addchar(i32* %11, i8 signext 34)
  br label %168

168:                                              ; preds = %166, %67, %59, %57, %53
  %169 = load i8*, i8** %10, align 8
  %170 = call i32 @luaL_addstring(i32* %11, i8* %169)
  %171 = call i32 @luaL_pushresult(i32* %11)
  ret void
}

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @luaL_addstring(i32*, i8*) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

declare dso_local i64 @lua_equal(i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @luaL_addchar(i32*, i8 signext) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
