; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_sign.c_unsetForCB.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_sign.c_unsetForCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctxUnsetForCB = type { %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32* }

@R_SIGN_KEY_MAXSZ = common dso_local global i32 0, align 4
@R_SIGN_VAL_MAXSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"error: cannot deserialize zign\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @unsetForCB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unsetForCB(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ctxUnsetForCB*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.ctxUnsetForCB*
  store %struct.ctxUnsetForCB* %14, %struct.ctxUnsetForCB** %7, align 8
  %15 = load i32, i32* @R_SIGN_KEY_MAXSZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @R_SIGN_VAL_MAXSZ, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = call %struct.TYPE_8__* (...) @r_sign_item_new()
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %11, align 8
  %23 = load %struct.ctxUnsetForCB*, %struct.ctxUnsetForCB** %7, align 8
  %24 = getelementptr inbounds %struct.ctxUnsetForCB, %struct.ctxUnsetForCB* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %12, align 8
  %28 = load %struct.ctxUnsetForCB*, %struct.ctxUnsetForCB** %7, align 8
  %29 = getelementptr inbounds %struct.ctxUnsetForCB, %struct.ctxUnsetForCB* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @r_sign_deserialize(%struct.TYPE_9__* %30, %struct.TYPE_8__* %31, i8* %32, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %3
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.ctxUnsetForCB*, %struct.ctxUnsetForCB** %7, align 8
  %46 = getelementptr inbounds %struct.ctxUnsetForCB, %struct.ctxUnsetForCB* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %44, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %41
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  %52 = load %struct.ctxUnsetForCB*, %struct.ctxUnsetForCB** %7, align 8
  %53 = getelementptr inbounds %struct.ctxUnsetForCB, %struct.ctxUnsetForCB* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %56 = call i32 @serialize(%struct.TYPE_9__* %54, %struct.TYPE_8__* %55, i8* %18, i8* %21)
  %57 = load i32*, i32** %12, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @sdb_remove(i32* %57, i8* %58, i32 0)
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @sdb_set(i32* %60, i8* %18, i8* %21, i32 0)
  br label %62

62:                                               ; preds = %49, %41, %36
  br label %65

63:                                               ; preds = %3
  %64 = call i32 @eprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %62
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %67 = call i32 @r_sign_item_free(%struct.TYPE_8__* %66)
  %68 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %68)
  ret i32 1
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_8__* @r_sign_item_new(...) #2

declare dso_local i64 @r_sign_deserialize(%struct.TYPE_9__*, %struct.TYPE_8__*, i8*, i8*) #2

declare dso_local i32 @serialize(%struct.TYPE_9__*, %struct.TYPE_8__*, i8*, i8*) #2

declare dso_local i32 @sdb_remove(i32*, i8*, i32) #2

declare dso_local i32 @sdb_set(i32*, i8*, i8*, i32) #2

declare dso_local i32 @eprintf(i8*) #2

declare dso_local i32 @r_sign_item_free(%struct.TYPE_8__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
