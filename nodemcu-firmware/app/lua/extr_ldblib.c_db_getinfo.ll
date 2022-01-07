; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldblib.c_db_getinfo.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldblib.c_db_getinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"flnSu\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c">%s\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"function or level expected\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"invalid option\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"short_src\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"linedefined\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"lastlinedefined\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"what\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"currentline\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"nups\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"namewhat\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"activelines\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @db_getinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_getinfo(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @getthread(i32* %8, i32* %5)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 2
  %13 = call i8* @luaL_optstring(i32* %10, i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %7, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i64 @lua_isnumber(i32* %14, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i64 @lua_tointeger(i32* %21, i32 %23)
  %25 = trunc i64 %24 to i32
  %26 = call i32 @lua_getstack(i32* %20, i32 %25, %struct.TYPE_4__* %4)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_pushnil(i32* %29)
  store i32 1, i32* %2, align 4
  br label %148

31:                                               ; preds = %19
  br label %63

32:                                               ; preds = %1
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i64 @lua_isfunction(i32* %33, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i64 @lua_islightfunction(i32* %39, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %38, %32
  %45 = load i32*, i32** %3, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @lua_pushfstring(i32* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i8* @lua_tostring(i32* %48, i32 -1)
  store i8* %49, i8** %7, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 @lua_pushvalue(i32* %50, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @lua_xmove(i32* %54, i32* %55, i32 1)
  br label %62

57:                                               ; preds = %38
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i32 @luaL_argerror(i32* %58, i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 %61, i32* %2, align 4
  br label %148

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62, %31
  %64 = load i32*, i32** %6, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @lua_getinfo(i32* %64, i8* %65, %struct.TYPE_4__* %4)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 2
  %72 = call i32 @luaL_argerror(i32* %69, i32 %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 %72, i32* %2, align 4
  br label %148

73:                                               ; preds = %63
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @lua_createtable(i32* %74, i32 0, i32 2)
  %76 = load i8*, i8** %7, align 8
  %77 = call i64 @strchr(i8* %76, float 8.300000e+01)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %73
  %80 = load i32*, i32** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @settabss(i32* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load i32*, i32** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @settabss(i32* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @settabsi(i32* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  %92 = load i32*, i32** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @settabsi(i32* %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %94)
  %96 = load i32*, i32** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @settabss(i32* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %79, %73
  %101 = load i8*, i8** %7, align 8
  %102 = call i64 @strchr(i8* %101, float 1.080000e+02)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i32*, i32** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @settabsi(i32* %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %104, %100
  %110 = load i8*, i8** %7, align 8
  %111 = call i64 @strchr(i8* %110, float 1.170000e+02)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i32*, i32** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @settabsi(i32* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %113, %109
  %119 = load i8*, i8** %7, align 8
  %120 = call i64 @strchr(i8* %119, float 1.100000e+02)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = load i32*, i32** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @settabss(i32* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %125)
  %127 = load i32*, i32** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @settabss(i32* %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %122, %118
  %132 = load i8*, i8** %7, align 8
  %133 = call i64 @strchr(i8* %132, float 7.600000e+01)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i32*, i32** %3, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = call i32 @treatstackoption(i32* %136, i32* %137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  br label %139

139:                                              ; preds = %135, %131
  %140 = load i8*, i8** %7, align 8
  %141 = call i64 @strchr(i8* %140, float 1.020000e+02)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32*, i32** %3, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = call i32 @treatstackoption(i32* %144, i32* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %147

147:                                              ; preds = %143, %139
  store i32 1, i32* %2, align 4
  br label %148

148:                                              ; preds = %147, %68, %57, %28
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32* @getthread(i32*, i32*) #1

declare dso_local i8* @luaL_optstring(i32*, i32, i8*) #1

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @lua_getstack(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_isfunction(i32*, i32) #1

declare dso_local i64 @lua_islightfunction(i32*, i32) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i8*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_xmove(i32*, i32*, i32) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @lua_getinfo(i32*, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i64 @strchr(i8*, float) #1

declare dso_local i32 @settabss(i32*, i8*, i32) #1

declare dso_local i32 @settabsi(i32*, i8*, i32) #1

declare dso_local i32 @treatstackoption(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
