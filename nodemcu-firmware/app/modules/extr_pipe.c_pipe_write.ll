; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_pipe.c_pipe_write.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_pipe.c_pipe_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@INVALID_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"must be a string\00", align 1
@AT_TAIL = common dso_local global i32 0, align 4
@LUAL_BUFFERSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pipe_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_write(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i64, i64* @INVALID_LEN, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @lua_tolstring(i32* %10, i32 2, i64* %4)
  store i8* %11, i8** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %119

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @INVALID_LEN, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @luaL_argcheck(i32* %16, i32 %20, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @AT_TAIL, align 4
  %24 = call %struct.TYPE_4__* @checkPipeTable(i32* %22, i32 1, i32 %23)
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %6, align 8
  br label %25

25:                                               ; preds = %100, %15
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @LUAL_BUFFERSIZE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call i64 @lua_objlen(i32* %38, i32 1)
  %40 = add nsw i64 %39, 1
  %41 = call %struct.TYPE_4__* @newPipeUD(i32* %37, i32 1, i64 %40)
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %66

42:                                               ; preds = %25
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %53, %56
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @memmove(i32 %50, i32 %57, i32 %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %47, %42
  br label %66

66:                                               ; preds = %65, %36
  %67 = load i32, i32* @LUAL_BUFFERSIZE, align 4
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %8, align 4
  %70 = load i64, i64* %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = icmp ule i64 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %101

75:                                               ; preds = %66
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = call i32 @memcpy(i32 %82, i8* %83, i64 %85)
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %4, align 8
  %95 = sub i64 %94, %93
  store i64 %95, i64* %4, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i8*, i8** %5, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %5, align 8
  br label %100

100:                                              ; preds = %75
  br i1 true, label %25, label %101

101:                                              ; preds = %100, %74
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %104, %107
  %109 = load i8*, i8** %5, align 8
  %110 = load i64, i64* %4, align 8
  %111 = call i32 @memcpy(i32 %108, i8* %109, i64 %110)
  %112 = load i64, i64* %4, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = add i64 %116, %112
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 4
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %101, %14
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local %struct.TYPE_4__* @checkPipeTable(i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @newPipeUD(i32*, i32, i64) #1

declare dso_local i64 @lua_objlen(i32*, i32) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
