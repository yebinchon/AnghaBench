; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_misc.c_ECPGset_var.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_misc.c_ECPGset_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.var_list = type { i32, %struct.var_list*, i8* }
%struct.sqlca_t = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ECPG_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@ivlist = common dso_local global %struct.var_list* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"YE001\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"out of memory on line %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ECPGset_var(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.var_list*, align 8
  %8 = alloca %struct.sqlca_t*, align 8
  %9 = alloca %struct.sqlca_t*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = call %struct.sqlca_t* (...) @ECPGget_sqlca()
  store %struct.sqlca_t* %10, %struct.sqlca_t** %8, align 8
  %11 = load %struct.sqlca_t*, %struct.sqlca_t** %8, align 8
  %12 = icmp eq %struct.sqlca_t* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @ECPG_OUT_OF_MEMORY, align 4
  %16 = load i32, i32* @ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, align 4
  %17 = call i32 @ecpg_raise(i32 %14, i32 %15, i32 %16, i32* null)
  br label %88

18:                                               ; preds = %3
  %19 = load %struct.sqlca_t*, %struct.sqlca_t** %8, align 8
  %20 = call i32 @ecpg_init_sqlca(%struct.sqlca_t* %19)
  %21 = load %struct.var_list*, %struct.var_list** @ivlist, align 8
  store %struct.var_list* %21, %struct.var_list** %7, align 8
  br label %22

22:                                               ; preds = %36, %18
  %23 = load %struct.var_list*, %struct.var_list** %7, align 8
  %24 = icmp ne %struct.var_list* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load %struct.var_list*, %struct.var_list** %7, align 8
  %27 = getelementptr inbounds %struct.var_list, %struct.var_list* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.var_list*, %struct.var_list** %7, align 8
  %34 = getelementptr inbounds %struct.var_list, %struct.var_list* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  br label %88

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.var_list*, %struct.var_list** %7, align 8
  %38 = getelementptr inbounds %struct.var_list, %struct.var_list* %37, i32 0, i32 1
  %39 = load %struct.var_list*, %struct.var_list** %38, align 8
  store %struct.var_list* %39, %struct.var_list** %7, align 8
  br label %22

40:                                               ; preds = %22
  %41 = call i64 @calloc(i64 1, i32 24)
  %42 = inttoptr i64 %41 to %struct.var_list*
  store %struct.var_list* %42, %struct.var_list** %7, align 8
  %43 = load %struct.var_list*, %struct.var_list** %7, align 8
  %44 = icmp ne %struct.var_list* %43, null
  br i1 %44, label %77, label %45

45:                                               ; preds = %40
  %46 = call %struct.sqlca_t* (...) @ECPGget_sqlca()
  store %struct.sqlca_t* %46, %struct.sqlca_t** %9, align 8
  %47 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %48 = icmp eq %struct.sqlca_t* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @ECPG_OUT_OF_MEMORY, align 4
  %52 = load i32, i32* @ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, align 4
  %53 = call i32 @ecpg_raise(i32 %50, i32 %51, i32 %52, i32* null)
  br label %88

54:                                               ; preds = %45
  %55 = load i32, i32* @ECPG_OUT_OF_MEMORY, align 4
  %56 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %57 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %59 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strncpy(i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  %62 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %63 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @snprintf(i32 %65, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %69 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @strlen(i32 %71)
  %73 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %74 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = call i32 (...) @ECPGfree_auto_mem()
  br label %88

77:                                               ; preds = %40
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.var_list*, %struct.var_list** %7, align 8
  %80 = getelementptr inbounds %struct.var_list, %struct.var_list* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = load %struct.var_list*, %struct.var_list** %7, align 8
  %83 = getelementptr inbounds %struct.var_list, %struct.var_list* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load %struct.var_list*, %struct.var_list** @ivlist, align 8
  %85 = load %struct.var_list*, %struct.var_list** %7, align 8
  %86 = getelementptr inbounds %struct.var_list, %struct.var_list* %85, i32 0, i32 1
  store %struct.var_list* %84, %struct.var_list** %86, align 8
  %87 = load %struct.var_list*, %struct.var_list** %7, align 8
  store %struct.var_list* %87, %struct.var_list** @ivlist, align 8
  br label %88

88:                                               ; preds = %13, %31, %49, %77, %54
  ret void
}

declare dso_local %struct.sqlca_t* @ECPGget_sqlca(...) #1

declare dso_local i32 @ecpg_raise(i32, i32, i32, i32*) #1

declare dso_local i32 @ecpg_init_sqlca(%struct.sqlca_t*) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @ECPGfree_auto_mem(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
