; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_fetch_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_fetch_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt = type { i32 }
%struct.codeview_type_parse = type { i32 }
%union.codeview_type = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Cannot locate type %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Couldn't load forward type %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symt* (%struct.codeview_type_parse*, i32, i32)* @codeview_fetch_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symt* @codeview_fetch_type(%struct.codeview_type_parse* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.symt*, align 8
  %5 = alloca %struct.codeview_type_parse*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.symt*, align 8
  %9 = alloca %union.codeview_type*, align 8
  store %struct.codeview_type_parse* %0, %struct.codeview_type_parse** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store %struct.symt* null, %struct.symt** %4, align 8
  br label %41

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @TRUE, align 4
  %16 = call %struct.symt* @codeview_get_type(i32 %14, i32 %15)
  store %struct.symt* %16, %struct.symt** %8, align 8
  %17 = icmp ne %struct.symt* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load %struct.symt*, %struct.symt** %8, align 8
  store %struct.symt* %19, %struct.symt** %4, align 8
  br label %41

20:                                               ; preds = %13
  %21 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call %union.codeview_type* @codeview_jump_to_type(%struct.codeview_type_parse* %21, i32 %22)
  store %union.codeview_type* %23, %union.codeview_type** %9, align 8
  %24 = icmp ne %union.codeview_type* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @FIXME(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %26)
  store %struct.symt* null, %struct.symt** %4, align 8
  br label %41

28:                                               ; preds = %20
  %29 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %union.codeview_type*, %union.codeview_type** %9, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.symt* @codeview_parse_one_type(%struct.codeview_type_parse* %29, i32 %30, %union.codeview_type* %31, i32 %32)
  store %struct.symt* %33, %struct.symt** %8, align 8
  %34 = load %struct.symt*, %struct.symt** %8, align 8
  %35 = icmp ne %struct.symt* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %28
  %40 = load %struct.symt*, %struct.symt** %8, align 8
  store %struct.symt* %40, %struct.symt** %4, align 8
  br label %41

41:                                               ; preds = %39, %25, %18, %12
  %42 = load %struct.symt*, %struct.symt** %4, align 8
  ret %struct.symt* %42
}

declare dso_local %struct.symt* @codeview_get_type(i32, i32) #1

declare dso_local %union.codeview_type* @codeview_jump_to_type(%struct.codeview_type_parse*, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local %struct.symt* @codeview_parse_one_type(%struct.codeview_type_parse*, i32, %union.codeview_type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
