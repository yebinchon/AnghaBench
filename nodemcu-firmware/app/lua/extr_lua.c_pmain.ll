; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lua.c_pmain.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lua.c_pmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Smain = type { i8**, i32, i32 }

@globalL = common dso_local global i32* null, align 8
@progname = common dso_local global i8* null, align 8
@LUA_GCSTOP = common dso_local global i32 0, align 4
@LUA_GCRESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pmain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmain(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.Smain*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @lua_touserdata(i32* %10, i32 1)
  %12 = inttoptr i64 %11 to %struct.Smain*
  store %struct.Smain* %12, %struct.Smain** %4, align 8
  %13 = load %struct.Smain*, %struct.Smain** %4, align 8
  %14 = getelementptr inbounds %struct.Smain, %struct.Smain* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  store i8** %15, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32*, i32** %3, align 8
  store i32* %16, i32** @globalL, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** @progname, align 8
  br label %33

33:                                               ; preds = %29, %21, %1
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @LUA_GCSTOP, align 4
  %36 = call i32 @lua_gc(i32* %34, i32 %35, i32 0)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @luaL_openlibs(i32* %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @LUA_GCRESTART, align 4
  %41 = call i32 @lua_gc(i32* %39, i32 %40, i32 0)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @print_version(i32* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @handle_luainit(i32* %44)
  %46 = load %struct.Smain*, %struct.Smain** %4, align 8
  %47 = getelementptr inbounds %struct.Smain, %struct.Smain* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load i8**, i8*** %5, align 8
  %49 = call i32 @collectargs(i8** %48, i32* %7, i32* %8, i32* %9)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %33
  %53 = load %struct.Smain*, %struct.Smain** %4, align 8
  %54 = getelementptr inbounds %struct.Smain, %struct.Smain* %53, i32 0, i32 1
  store i32 1, i32* %54, align 8
  store i32 0, i32* %2, align 4
  br label %77

55:                                               ; preds = %33
  %56 = load i32*, i32** %3, align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  br label %66

62:                                               ; preds = %55
  %63 = load %struct.Smain*, %struct.Smain** %4, align 8
  %64 = getelementptr inbounds %struct.Smain, %struct.Smain* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  br label %66

66:                                               ; preds = %62, %60
  %67 = phi i32 [ %61, %60 ], [ %65, %62 ]
  %68 = call i32 @runargs(i32* %56, i8** %57, i32 %67)
  %69 = load %struct.Smain*, %struct.Smain** %4, align 8
  %70 = getelementptr inbounds %struct.Smain, %struct.Smain* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.Smain*, %struct.Smain** %4, align 8
  %72 = getelementptr inbounds %struct.Smain, %struct.Smain* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %77

76:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %75, %52
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_gc(i32*, i32, i32) #1

declare dso_local i32 @luaL_openlibs(i32*) #1

declare dso_local i32 @print_version(i32*) #1

declare dso_local i32 @handle_luainit(i32*) #1

declare dso_local i32 @collectargs(i8**, i32*, i32*, i32*) #1

declare dso_local i32 @runargs(i32*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
