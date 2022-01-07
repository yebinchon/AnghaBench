; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_push_string.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_push_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.jsonsl_state_st = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.jsonsl_state_st*)* @push_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_string(%struct.TYPE_4__* %0, %struct.jsonsl_state_st* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.jsonsl_state_st*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.jsonsl_state_st* %1, %struct.jsonsl_state_st** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @luaL_buffinit(i32 %11, i32* %5)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %4, align 8
  %15 = call i8* @get_state_buffer(%struct.TYPE_4__* %13, %struct.jsonsl_state_st* %14)
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8* %16, i8** %7, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %102, %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %4, align 8
  %20 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %4, align 8
  %23 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  %26 = sub nsw i32 %25, 1
  %27 = icmp slt i32 %18, %26
  br i1 %27, label %28, label %105

28:                                               ; preds = %17
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 92
  br i1 %36, label %37, label %99

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = and i32 %45, 255
  store i32 %46, i32* %8, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  switch i32 %52, label %98 [
    i32 98, label %53
    i32 102, label %54
    i32 110, label %55
    i32 114, label %56
    i32 116, label %57
    i32 117, label %58
  ]

53:                                               ; preds = %37
  store i32 8, i32* %8, align 4
  br label %98

54:                                               ; preds = %37
  store i32 12, i32* %8, align 4
  br label %98

55:                                               ; preds = %37
  store i32 10, i32* %8, align 4
  br label %98

56:                                               ; preds = %37
  store i32 13, i32* %8, align 4
  br label %98

57:                                               ; preds = %37
  store i32 9, i32* %8, align 4
  br label %98

58:                                               ; preds = %37
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @fromhex(i8 signext %64)
  %66 = shl i32 %65, 12
  store i32 %66, i32* %8, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = call i32 @fromhex(i8 signext %72)
  %74 = shl i32 %73, 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = call i32 @fromhex(i8 signext %82)
  %84 = shl i32 %83, 4
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = call i32 @fromhex(i8 signext %92)
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @output_utf8(i32* %5, i32 %96)
  br label %102

98:                                               ; preds = %37, %57, %56, %55, %54, %53
  br label %99

99:                                               ; preds = %98, %28
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @luaL_putchar(i32* %5, i32 %100)
  br label %102

102:                                              ; preds = %99, %58
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %17

105:                                              ; preds = %17
  %106 = call i32 @luaL_pushresult(i32* %5)
  ret void
}

declare dso_local i32 @luaL_buffinit(i32, i32*) #1

declare dso_local i8* @get_state_buffer(%struct.TYPE_4__*, %struct.jsonsl_state_st*) #1

declare dso_local i32 @fromhex(i8 signext) #1

declare dso_local i32 @output_utf8(i32*, i32) #1

declare dso_local i32 @luaL_putchar(i32*, i32) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
