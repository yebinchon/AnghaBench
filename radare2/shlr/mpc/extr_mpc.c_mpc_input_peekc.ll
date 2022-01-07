; ModuleID = '/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_input_peekc.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_input_peekc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.TYPE_7__*)* @mpc_input_peekc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @mpc_input_peekc(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8 0, i8* %4, align 1
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %89 [
    i32 128, label %8
    i32 130, label %18
    i32 129, label %36
  ]

8:                                                ; preds = %1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i8, i8* %11, i64 %15
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %2, align 1
  br label %91

18:                                               ; preds = %1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call signext i8 @fgetc(i32 %21)
  store i8 %22, i8* %4, align 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @feof(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i8 0, i8* %2, align 1
  br label %91

29:                                               ; preds = %18
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SEEK_CUR, align 4
  %34 = call i32 @fseek(i32 %32, i32 -1, i32 %33)
  %35 = load i8, i8* %4, align 1
  store i8 %35, i8* %2, align 1
  br label %91

36:                                               ; preds = %1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call signext i8 @getc(i32 %44)
  store i8 %45, i8* %4, align 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @feof(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i8 0, i8* %2, align 1
  br label %91

52:                                               ; preds = %41
  %53 = load i8, i8* %4, align 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ungetc(i8 signext %53, i32 %56)
  %58 = load i8, i8* %4, align 1
  store i8 %58, i8* %2, align 1
  br label %91

59:                                               ; preds = %36
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = call i32 @mpc_input_buffer_in_range(%struct.TYPE_7__* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = call signext i8 @mpc_input_buffer_get(%struct.TYPE_7__* %69)
  store i8 %70, i8* %2, align 1
  br label %91

71:                                               ; preds = %64, %59
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call signext i8 @getc(i32 %74)
  store i8 %75, i8* %4, align 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @feof(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  store i8 0, i8* %2, align 1
  br label %91

82:                                               ; preds = %71
  %83 = load i8, i8* %4, align 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ungetc(i8 signext %83, i32 %86)
  %88 = load i8, i8* %4, align 1
  store i8 %88, i8* %2, align 1
  br label %91

89:                                               ; preds = %1
  %90 = load i8, i8* %4, align 1
  store i8 %90, i8* %2, align 1
  br label %91

91:                                               ; preds = %89, %82, %81, %68, %52, %51, %29, %28, %8
  %92 = load i8, i8* %2, align 1
  ret i8 %92
}

declare dso_local signext i8 @fgetc(i32) #1

declare dso_local i32 @feof(i32) #1

declare dso_local i32 @fseek(i32, i32, i32) #1

declare dso_local signext i8 @getc(i32) #1

declare dso_local i32 @ungetc(i8 signext, i32) #1

declare dso_local i32 @mpc_input_buffer_in_range(%struct.TYPE_7__*) #1

declare dso_local signext i8 @mpc_input_buffer_get(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
