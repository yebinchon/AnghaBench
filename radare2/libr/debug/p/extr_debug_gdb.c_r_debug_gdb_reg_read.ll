; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_gdb.c_r_debug_gdb_reg_read.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_gdb.c_r_debug_gdb_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@desc = common dso_local global %struct.TYPE_7__* null, align 8
@R_DEBUG_REASON_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"r_debug_gdb_reg_read: small buffer %d vs %d\0A\00", align 1
@reg_buf = common dso_local global i32* null, align 8
@buf_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32*, i32)* @r_debug_gdb_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_debug_gdb_reg_read(%struct.TYPE_6__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = call i32 @check_connection(%struct.TYPE_6__* %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @desc, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @R_DEBUG_REASON_UNKNOWN, align 4
  store i32 %18, i32* %5, align 4
  br label %112

19:                                               ; preds = %4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @desc, align 8
  %21 = call i32 @gdbr_read_registers(%struct.TYPE_7__* %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @desc, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @desc, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %19
  store i32 -1, i32* %5, align 4
  br label %112

30:                                               ; preds = %24
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @r_reg_get_bytes(i32 %33, i32 %34, i32* %11)
  %36 = call i32 @free(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @desc, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @desc, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @eprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %30
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @desc, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @R_MIN(i32 %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** @desc, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @R_MAX(i32 %56, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32*, i32** @reg_buf, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %48
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @buf_size, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load i32*, i32** @reg_buf, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32* @realloc(i32* %66, i32 %67)
  store i32* %68, i32** %12, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  store i32 -1, i32* %5, align 4
  br label %112

72:                                               ; preds = %65
  %73 = load i32*, i32** %12, align 8
  store i32* %73, i32** @reg_buf, align 8
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* @buf_size, align 4
  br label %75

75:                                               ; preds = %72, %61
  br label %84

76:                                               ; preds = %48
  %77 = load i32, i32* %11, align 4
  %78 = call i32* @calloc(i32 %77, i32 1)
  store i32* %78, i32** @reg_buf, align 8
  %79 = load i32*, i32** @reg_buf, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  store i32 -1, i32* %5, align 4
  br label %112

82:                                               ; preds = %76
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* @buf_size, align 4
  br label %84

84:                                               ; preds = %82, %75
  %85 = load i32*, i32** %8, align 8
  %86 = bitcast i32* %85 to i8*
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @memset(i8* %86, i32 0, i32 %87)
  %89 = load i32*, i32** %8, align 8
  %90 = bitcast i32* %89 to i8*
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** @desc, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @R_MIN(i32 %94, i32 %95)
  %97 = call i32 @memcpy(i8* %90, i32 %93, i32 %96)
  %98 = load i32*, i32** @reg_buf, align 8
  %99 = bitcast i32* %98 to i8*
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @memset(i8* %99, i32 0, i32 %100)
  %102 = load i32*, i32** @reg_buf, align 8
  %103 = bitcast i32* %102 to i8*
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** @desc, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @memcpy(i8* %103, i32 %106, i32 %107)
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** @desc, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %84, %81, %71, %29, %17
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @check_connection(%struct.TYPE_6__*) #1

declare dso_local i32 @gdbr_read_registers(%struct.TYPE_7__*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @r_reg_get_bytes(i32, i32, i32*) #1

declare dso_local i32 @eprintf(i8*, i32, i32) #1

declare dso_local i32 @R_MIN(i32, i32) #1

declare dso_local i32 @R_MAX(i32, i32) #1

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
