; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_java_handle_reload_bin.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_java_handle_reload_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@JAVA_CMDS = common dso_local global i64 0, align 8
@RELOAD_BIN_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*)* @r_cmd_java_handle_reload_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_cmd_java_handle_reload_bin(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = call i32* @get_anal(%struct.TYPE_9__* %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @r_cmd_java_get_bin_obj(i32* %15)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %7, align 8
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @r_cmd_java_consumetok(i8* %24, i8 signext 32, i32 -1)
  store i8* %25, i8** %8, align 8
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* @JAVA_CMDS, align 8
  %32 = load i64, i64* @RELOAD_BIN_IDX, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @r_cmd_java_print_cmd_help(i64 %33)
  store i32 1, i32* %3, align 4
  br label %110

35:                                               ; preds = %26
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @r_cmd_java_is_valid_input_num_value(%struct.TYPE_9__* %36, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @r_cmd_java_get_input_num_value(%struct.TYPE_9__* %41, i8* %42)
  br label %45

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i32 [ %43, %40 ], [ -1, %44 ]
  store i32 %46, i32* %9, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i8*, i8** %8, align 8
  %53 = call i8* @r_cmd_java_consumetok(i8* %52, i8 signext 32, i32 -1)
  store i8* %53, i8** %8, align 8
  br label %54

54:                                               ; preds = %51, %45
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i64 @r_cmd_java_is_valid_input_num_value(%struct.TYPE_9__* %55, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @r_cmd_java_get_input_num_value(%struct.TYPE_9__* %60, i8* %61)
  br label %64

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i32 [ %62, %59 ], [ -1, %63 ]
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %64
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @r_io_use_fd(i32 %71, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @r_io_size(i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32* @malloc(i32 %82)
  store i32* %83, i32** %11, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @memset(i32* %84, i32 0, i32 %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @r_io_read_at(i32 %89, i32 %90, i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %68, %64
  %95 = load i32*, i32** %11, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load i32*, i32** %7, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @r_cmd_java_reload_bin_from_buf(%struct.TYPE_9__* %101, i32* %102, i32* %103, i32 %104)
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %100, %97, %94
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @free(i32* %107)
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %30
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32* @get_anal(%struct.TYPE_9__*) #1

declare dso_local i64 @r_cmd_java_get_bin_obj(i32*) #1

declare dso_local i8* @r_cmd_java_consumetok(i8*, i8 signext, i32) #1

declare dso_local i32 @r_cmd_java_print_cmd_help(i64) #1

declare dso_local i64 @r_cmd_java_is_valid_input_num_value(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @r_cmd_java_get_input_num_value(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @r_io_use_fd(i32, i32) #1

declare dso_local i32 @r_io_size(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @r_io_read_at(i32, i32, i32*, i32) #1

declare dso_local i32 @r_cmd_java_reload_bin_from_buf(%struct.TYPE_9__*, i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
