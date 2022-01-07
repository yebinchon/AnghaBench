; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/luac_cross/extr_luac.c_pmain.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/luac_cross/extr_luac.c_pmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Smain = type { i32, i8** }

@.str = private unnamed_addr constant [21 x i8] c"too many input files\00", align 1
@execute = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@lookup = common dso_local global i32 0, align 4
@listing = common dso_local global i32 0, align 4
@dumping = common dso_local global i64 0, align 8
@output = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@flash = common dso_local global i64 0, align 8
@writer = common dso_local global i32 0, align 4
@stripping = common dso_local global i32 0, align 4
@address = common dso_local global i32 0, align 4
@maxSize = common dso_local global i32 0, align 4
@target = common dso_local global i32 0, align 4
@LUA_ERR_CC_INTOVERFLOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"value too big or small for target integer type\00", align 1
@LUA_ERR_CC_NOTINTEGER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"target lua_Number is integral but fractional value found\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pmain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmain(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.Smain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @lua_touserdata(i32* %12, i32 1)
  %14 = inttoptr i64 %13 to %struct.Smain*
  store %struct.Smain* %14, %struct.Smain** %4, align 8
  %15 = load %struct.Smain*, %struct.Smain** %4, align 8
  %16 = getelementptr inbounds %struct.Smain, %struct.Smain* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.Smain*, %struct.Smain** %4, align 8
  %19 = getelementptr inbounds %struct.Smain, %struct.Smain* %18, i32 0, i32 1
  %20 = load i8**, i8*** %19, align 8
  store i8** %20, i8*** %6, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @lua_checkstack(i32* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %1
  %26 = call i32 @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %1
  %28 = load i8*, i8** @execute, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %64

30:                                               ; preds = %27
  %31 = load i32*, i32** %3, align 8
  %32 = load i8*, i8** @execute, align 8
  %33 = call i64 @luaL_loadfile(i32* %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32*, i32** %3, align 8
  %37 = call i8* @lua_tostring(i32* %36, i32 -1)
  %38 = call i32 @fatal(i8* %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @luaL_openlibs(i32* %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load i8*, i8** @execute, align 8
  %44 = call i32 @lua_pushstring(i32* %42, i8* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i64 @lua_pcall(i32* %45, i32 1, i32 1, i32 0)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load i32*, i32** %3, align 8
  %50 = call i8* @lua_tostring(i32* %49, i32 -1)
  %51 = call i32 @fatal(i8* %50)
  br label %52

52:                                               ; preds = %48, %39
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @lua_isfunction(i32* %53, i32 -1)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @lua_pop(i32* %57, i32 1)
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %178

62:                                               ; preds = %56
  store i8* null, i8** @execute, align 8
  br label %63

63:                                               ; preds = %62, %52
  br label %64

64:                                               ; preds = %63, %27
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %90, %64
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %65
  %70 = call i64 @IS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %79

73:                                               ; preds = %69
  %74 = load i8**, i8*** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  br label %79

79:                                               ; preds = %73, %72
  %80 = phi i8* [ null, %72 ], [ %78, %73 ]
  store i8* %80, i8** %9, align 8
  %81 = load i32*, i32** %3, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call i64 @luaL_loadfile(i32* %81, i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32*, i32** %3, align 8
  %87 = call i8* @lua_tostring(i32* %86, i32 -1)
  %88 = call i32 @fatal(i8* %87)
  br label %89

89:                                               ; preds = %85, %79
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %65

93:                                               ; preds = %65
  %94 = load i32*, i32** %3, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i8*, i8** @execute, align 8
  %97 = icmp ne i8* %96, null
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 1, i32 0
  %100 = add nsw i32 %95, %99
  %101 = load i32, i32* @lookup, align 4
  %102 = call i32* @combine(i32* %94, i32 %100, i32 %101)
  store i32* %102, i32** %7, align 8
  %103 = load i32, i32* @listing, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %93
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* @listing, align 4
  %108 = icmp sgt i32 %107, 1
  %109 = zext i1 %108 to i32
  %110 = call i32 @luaU_print(i32* %106, i32 %109)
  br label %111

111:                                              ; preds = %105, %93
  %112 = load i64, i64* @dumping, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %177

114:                                              ; preds = %111
  %115 = load i32*, i32** @output, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i32*, i32** @stdout, align 8
  br label %122

119:                                              ; preds = %114
  %120 = load i32*, i32** @output, align 8
  %121 = call i32* @fopen(i32* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %117
  %123 = phi i32* [ %118, %117 ], [ %121, %119 ]
  store i32* %123, i32** %11, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = call i32 @cannot(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %122
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @lua_lock(i32* %129)
  %131 = load i64, i64* @flash, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load i32*, i32** %3, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* @writer, align 4
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* @stripping, align 4
  %139 = load i32, i32* @address, align 4
  %140 = load i32, i32* @maxSize, align 4
  %141 = call i32 @dumpToFlashImage(i32* %134, i32* %135, i32 %136, i32* %137, i32 %138, i32 %139, i32 %140)
  store i32 %141, i32* %10, align 4
  br label %150

142:                                              ; preds = %128
  %143 = load i32*, i32** %3, align 8
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* @writer, align 4
  %146 = load i32*, i32** %11, align 8
  %147 = load i32, i32* @stripping, align 4
  %148 = load i32, i32* @target, align 4
  %149 = call i32 @luaU_dump_crosscompile(i32* %143, i32* %144, i32 %145, i32* %146, i32 %147, i32 %148)
  store i32 %149, i32* %10, align 4
  br label %150

150:                                              ; preds = %142, %133
  %151 = load i32*, i32** %3, align 8
  %152 = call i32 @lua_unlock(i32* %151)
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @LUA_ERR_CC_INTOVERFLOW, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = call i32 @fatal(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %150
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* @LUA_ERR_CC_NOTINTEGER, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = call i32 @fatal(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %158
  %165 = load i32*, i32** %11, align 8
  %166 = call i64 @ferror(i32* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = call i32 @cannot(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %164
  %171 = load i32*, i32** %11, align 8
  %172 = call i64 @fclose(i32* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = call i32 @cannot(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %170
  br label %177

177:                                              ; preds = %176, %111
  store i32 0, i32* %2, align 4
  br label %178

178:                                              ; preds = %177, %61
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i64 @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_checkstack(i32*, i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i64 @luaL_loadfile(i32*, i8*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @luaL_openlibs(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_isfunction(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @IS(i8*) #1

declare dso_local i32* @combine(i32*, i32, i32) #1

declare dso_local i32 @luaU_print(i32*, i32) #1

declare dso_local i32* @fopen(i32*, i8*) #1

declare dso_local i32 @cannot(i8*) #1

declare dso_local i32 @lua_lock(i32*) #1

declare dso_local i32 @dumpToFlashImage(i32*, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @luaU_dump_crosscompile(i32*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @lua_unlock(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
