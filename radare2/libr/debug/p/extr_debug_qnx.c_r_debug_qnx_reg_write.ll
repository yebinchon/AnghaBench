; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_qnx.c_r_debug_qnx_reg_write.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_qnx.c_r_debug_qnx_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@R_REG_NAME_PC = common dso_local global i32 0, align 4
@reg_buf = common dso_local global i32* null, align 8
@buf_size = common dso_local global i32 0, align 4
@desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32*, i32)* @r_debug_qnx_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_debug_qnx_reg_write(%struct.TYPE_11__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @R_REG_NAME_PC, align 4
  %29 = call i8* @r_reg_get_name(i32 %27, i32 %28)
  store i8* %29, i8** %12, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %12, align 8
  %36 = call %struct.TYPE_10__* @r_reg_get(i32 %34, i8* %35, i32 0)
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %13, align 8
  %37 = load i32*, i32** @reg_buf, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %118

40:                                               ; preds = %4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %42 = icmp ne %struct.TYPE_10__* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %53, %43
  br label %58

58:                                               ; preds = %57, %40
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @r_reg_get_bytes(i32 %61, i32 %62, i32* %10)
  %64 = call i32 @free(i32 %63)
  %65 = load i32, i32* @buf_size, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %58
  %69 = load i32*, i32** @reg_buf, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = call i32* @realloc(i32* %69, i32 %73)
  store i32* %74, i32** %14, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %68
  store i32 -1, i32* %5, align 4
  br label %118

78:                                               ; preds = %68
  %79 = load i32*, i32** %14, align 8
  store i32* %79, i32** @reg_buf, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = load i32, i32* @buf_size, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @buf_size, align 4
  %86 = sub nsw i32 %84, %85
  %87 = call i32 @memset(i32* %83, i32 0, i32 %86)
  br label %88

88:                                               ; preds = %78, %58
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %15, align 8
  br label %89

89:                                               ; preds = %102, %88
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32*, i32** @reg_buf, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call %struct.TYPE_10__* @r_reg_next_diff(i32 %92, i32 %93, i32* %94, i32 %95, %struct.TYPE_10__* %96, i32 %97)
  store %struct.TYPE_10__* %98, %struct.TYPE_10__** %15, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %100 = icmp ne %struct.TYPE_10__* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %89
  br label %117

102:                                              ; preds = %89
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %107 = call i32 @r_reg_get_value(i32 %105, %struct.TYPE_10__* %106)
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %11, align 4
  %109 = sdiv i32 %108, 8
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* @desc, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = bitcast i32* %16 to i8*
  %115 = load i32, i32* %17, align 4
  %116 = call i32 @qnxr_write_reg(i32 %110, i32 %113, i8* %114, i32 %115)
  br label %89

117:                                              ; preds = %101
  store i32 1, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %77, %39
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i8* @r_reg_get_name(i32, i32) #1

declare dso_local %struct.TYPE_10__* @r_reg_get(i32, i8*, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @r_reg_get_bytes(i32, i32, i32*) #1

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @r_reg_next_diff(i32, i32, i32*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @r_reg_get_value(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @qnxr_write_reg(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
