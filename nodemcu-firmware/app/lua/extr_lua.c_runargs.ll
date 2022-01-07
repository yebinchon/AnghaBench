; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lua.c_runargs.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lua.c_runargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"=(command line)\00", align 1
@LUA_GCSETMEMLIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32)* @runargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runargs(i32* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %13

13:                                               ; preds = %134, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %137

17:                                               ; preds = %13
  %18 = load i8**, i8*** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %134

25:                                               ; preds = %17
  %26 = load i8**, i8*** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 45
  %35 = zext i1 %34 to i32
  %36 = call i32 @lua_assert(i32 %35)
  %37 = load i8**, i8*** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  switch i32 %44, label %132 [
    i32 101, label %45
    i32 109, label %74
    i32 108, label %103
  ]

45:                                               ; preds = %25
  %46 = load i8**, i8*** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %45
  %57 = load i8**, i8*** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %57, i64 %60
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %9, align 8
  br label %63

63:                                               ; preds = %56, %45
  %64 = load i8*, i8** %9, align 8
  %65 = icmp ne i8* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i32 @lua_assert(i32 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @dostring(i32* %68, i8* %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  store i32 1, i32* %4, align 4
  br label %138

73:                                               ; preds = %63
  br label %133

74:                                               ; preds = %25
  %75 = load i8**, i8*** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  store i8* %80, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %74
  %86 = load i8**, i8*** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %86, i64 %89
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %10, align 8
  br label %92

92:                                               ; preds = %85, %74
  %93 = load i8*, i8** %10, align 8
  %94 = icmp ne i8* %93, null
  %95 = zext i1 %94 to i32
  %96 = call i32 @lua_assert(i32 %95)
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 @atoi(i8* %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* @LUA_GCSETMEMLIMIT, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @lua_gc(i32* %99, i32 %100, i32 %101)
  br label %133

103:                                              ; preds = %25
  %104 = load i8**, i8*** %6, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 2
  store i8* %109, i8** %12, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %103
  %115 = load i8**, i8*** %6, align 8
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %115, i64 %118
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %12, align 8
  br label %121

121:                                              ; preds = %114, %103
  %122 = load i8*, i8** %12, align 8
  %123 = icmp ne i8* %122, null
  %124 = zext i1 %123 to i32
  %125 = call i32 @lua_assert(i32 %124)
  %126 = load i32*, i32** %5, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = call i32 @dolibrary(i32* %126, i8* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  store i32 1, i32* %4, align 4
  br label %138

131:                                              ; preds = %121
  br label %133

132:                                              ; preds = %25
  br label %133

133:                                              ; preds = %132, %131, %92, %73
  br label %134

134:                                              ; preds = %133, %24
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %13

137:                                              ; preds = %13
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %130, %72
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @dostring(i32*, i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @lua_gc(i32*, i32, i32) #1

declare dso_local i32 @dolibrary(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
