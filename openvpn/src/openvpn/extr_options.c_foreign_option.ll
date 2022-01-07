; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_foreign_option.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_foreign_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i8* }
%struct.env_set = type { i32 }
%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }

@OPTION_PARM_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"foreign_option_%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@M_WARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"foreign_option: name/value overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.options*, i8**, i32, %struct.env_set*)* @foreign_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @foreign_option(%struct.options* %0, i8** %1, i32 %2, %struct.env_set* %3) #0 {
  %5 = alloca %struct.options*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.env_set*, align 8
  %9 = alloca %struct.gc_arena, align 4
  %10 = alloca %struct.buffer, align 4
  %11 = alloca %struct.buffer, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.options* %0, %struct.options** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.env_set* %3, %struct.env_set** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %81

17:                                               ; preds = %4
  %18 = call i32 (...) @gc_new()
  %19 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %9, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @OPTION_PARM_SIZE, align 4
  %21 = call i32 @alloc_buf_gc(i32 %20, %struct.gc_arena* %9)
  %22 = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @OPTION_PARM_SIZE, align 4
  %24 = call i32 @alloc_buf_gc(i32 %23, %struct.gc_arena* %9)
  %25 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %26 = load %struct.options*, %struct.options** %5, align 8
  %27 = getelementptr inbounds %struct.options, %struct.options* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* %14, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %14, align 4
  %33 = load %struct.options*, %struct.options** %5, align 8
  %34 = getelementptr inbounds %struct.options, %struct.options* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %34, align 8
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %65, %17
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = load i8**, i8*** %6, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %41
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %14, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i8**, i8*** %6, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  %62 = load i32, i32* %14, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %55, %41
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %37

68:                                               ; preds = %37
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.env_set*, %struct.env_set** %8, align 8
  %73 = call i32 @BSTR(%struct.buffer* %10)
  %74 = call i32 @BSTR(%struct.buffer* %11)
  %75 = call i32 @setenv_str(%struct.env_set* %72, i32 %73, i32 %74)
  br label %79

76:                                               ; preds = %68
  %77 = load i32, i32* @M_WARN, align 4
  %78 = call i32 @msg(i32 %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %71
  %80 = call i32 @gc_free(%struct.gc_arena* %9)
  br label %81

81:                                               ; preds = %79, %4
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @alloc_buf_gc(i32, %struct.gc_arena*) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, ...) #1

declare dso_local i32 @setenv_str(%struct.env_set*, i32, i32) #1

declare dso_local i32 @BSTR(%struct.buffer*) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
