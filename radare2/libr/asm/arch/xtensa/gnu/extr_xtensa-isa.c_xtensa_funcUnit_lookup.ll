; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/xtensa/gnu/extr_xtensa-isa.c_xtensa_funcUnit_lookup.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/xtensa/gnu/extr_xtensa-isa.c_xtensa_funcUnit_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@xtensa_isa_bad_funcUnit = common dso_local global i32 0, align 4
@xtisa_errno = common dso_local global i32 0, align 4
@xtisa_error_msg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid functional unit name\00", align 1
@XTENSA_UNDEFINED = common dso_local global i32 0, align 4
@xtensa_isa_name_compare = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"functional unit \22%s\22 not recognized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xtensa_funcUnit_lookup(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13, %2
  %18 = load i32, i32* @xtensa_isa_bad_funcUnit, align 4
  store i32 %18, i32* @xtisa_errno, align 4
  %19 = load i32, i32* @xtisa_error_msg, align 4
  %20 = call i32 @strcpy(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @XTENSA_UNDEFINED, align 4
  store i32 %21, i32* %3, align 4
  br label %52

22:                                               ; preds = %13
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @xtensa_isa_name_compare, align 4
  %37 = call %struct.TYPE_7__* @bsearch(%struct.TYPE_7__* %7, i32 %32, i64 %35, i32 16, i32 %36)
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %8, align 8
  br label %38

38:                                               ; preds = %27, %22
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = icmp ne %struct.TYPE_7__* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @xtensa_isa_bad_funcUnit, align 4
  store i32 %42, i32* @xtisa_errno, align 4
  %43 = load i32, i32* @xtisa_error_msg, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @sprintf(i32 %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @XTENSA_UNDEFINED, align 4
  store i32 %46, i32* %3, align 4
  br label %52

47:                                               ; preds = %38
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %41, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @bsearch(%struct.TYPE_7__*, i32, i64, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
