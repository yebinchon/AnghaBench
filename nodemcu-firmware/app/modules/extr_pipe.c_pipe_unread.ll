; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_pipe.c_pipe_unread.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_pipe.c_pipe_unread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@INVALID_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"must be a string\00", align 1
@AT_HEAD = common dso_local global i32 0, align 4
@LUAL_BUFFERSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pipe_unread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_unread(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i64, i64* @INVALID_LEN, align 8
  store i64 %11, i64* %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* @lua_tolstring(i32* %12, i32 2, i64* %4)
  store i8* %13, i8** %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %132

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @INVALID_LEN, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @luaL_argcheck(i32* %18, i32 %22, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @AT_HEAD, align 4
  %26 = call %struct.TYPE_4__* @checkPipeTable(i32* %24, i32 1, i32 %25)
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %6, align 8
  br label %27

27:                                               ; preds = %113, %17
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @LUAL_BUFFERSIZE, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @LUAL_BUFFERSIZE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %27
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @lua_objlen(i32* %42, i32 1)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %56, %41
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @lua_rawgeti(i32* %49, i32 1, i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 @lua_rawseti(i32* %52, i32 1, i32 %54)
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %9, align 4
  br label %45

59:                                               ; preds = %45
  %60 = load i32*, i32** %3, align 8
  %61 = call %struct.TYPE_4__* @newPipeUD(i32* %60, i32 1, i32 1)
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %6, align 8
  store i32 0, i32* %7, align 4
  %62 = load i32, i32* @LUAL_BUFFERSIZE, align 4
  store i32 %62, i32* %8, align 4
  br label %85

63:                                               ; preds = %27
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @LUAL_BUFFERSIZE, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %72, %73
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %77, %80
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @memmove(i32 %74, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %69, %63
  br label %85

85:                                               ; preds = %84, %59
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @LUAL_BUFFERSIZE, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load i64, i64* %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = zext i32 %93 to i64
  %95 = icmp ule i64 %92, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %114

97:                                               ; preds = %85
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %4, align 8
  %101 = sub i64 %100, %99
  store i64 %101, i64* %4, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i8*, i8** %5, align 8
  %106 = load i64, i64* %4, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = call i32 @memcpy(i32 %104, i8* %107, i64 %109)
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  store i32 0, i32* %112, align 4
  br label %113

113:                                              ; preds = %97
  br i1 true, label %27, label %114

114:                                              ; preds = %113, %96
  %115 = load i64, i64* %4, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = sub i64 %119, %115
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %117, align 4
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %124, %127
  %129 = load i8*, i8** %5, align 8
  %130 = load i64, i64* %4, align 8
  %131 = call i32 @memcpy(i32 %128, i8* %129, i64 %130)
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %114, %16
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local %struct.TYPE_4__* @checkPipeTable(i32*, i32, i32) #1

declare dso_local i32 @lua_objlen(i32*, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @newPipeUD(i32*, i32, i32) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
