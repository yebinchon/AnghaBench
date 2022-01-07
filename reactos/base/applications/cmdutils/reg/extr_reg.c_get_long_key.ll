; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_reg.c_get_long_key.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_reg.c_get_long_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

@root_rels = common dso_local global %struct.TYPE_3__* null, align 8
@__const.get_long_key.fmt = private unnamed_addr constant [6 x i8] c"%s\\%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i8*)* @get_long_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_long_key(i64 %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [6 x i8], align 1
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @root_rels, align 8
  %12 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %11)
  store i64 %12, i64* %7, align 8
  %13 = bitcast [6 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.get_long_key.fmt, i32 0, i32 0), i64 6, i1 false)
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %28, %2
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @root_rels, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %31

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %14

31:                                               ; preds = %26, %14
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @root_rels, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strlenW(i8* %36)
  store i64 %37, i64* %8, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %31
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, 1
  %43 = mul i64 %42, 1
  %44 = call i8* @heap_xalloc(i64 %43)
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @root_rels, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strcpyW(i8* %45, i8* %50)
  %52 = load i8*, i8** %9, align 8
  store i8* %52, i8** %3, align 8
  br label %73

53:                                               ; preds = %31
  %54 = load i8*, i8** %5, align 8
  %55 = call i64 @strlenW(i8* %54)
  %56 = add i64 %55, 1
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, 1
  %61 = mul i64 %60, 1
  %62 = call i8* @heap_xalloc(i64 %61)
  store i8* %62, i8** %9, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @root_rels, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @sprintfW(i8* %63, i8* %64, i8* %69, i8* %70)
  %72 = load i8*, i8** %9, align 8
  store i8* %72, i8** %3, align 8
  br label %73

73:                                               ; preds = %53, %40
  %74 = load i8*, i8** %3, align 8
  ret i8* %74
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strlenW(i8*) #1

declare dso_local i8* @heap_xalloc(i64) #1

declare dso_local i32 @strcpyW(i8*, i8*) #1

declare dso_local i32 @sprintfW(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
