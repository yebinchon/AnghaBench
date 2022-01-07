; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_descriptor.c_ECPGallocate_desc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_descriptor.c_ECPGallocate_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descriptor = type { i32, %struct.descriptor*, i32, i32*, i32 }
%struct.sqlca_t = type { i32 }

@ECPG_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ECPGallocate_desc(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.descriptor*, align 8
  %7 = alloca %struct.sqlca_t*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = call %struct.sqlca_t* (...) @ECPGget_sqlca()
  store %struct.sqlca_t* %8, %struct.sqlca_t** %7, align 8
  %9 = load %struct.sqlca_t*, %struct.sqlca_t** %7, align 8
  %10 = icmp eq %struct.sqlca_t* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ECPG_OUT_OF_MEMORY, align 4
  %14 = load i32, i32* @ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, align 4
  %15 = call i32 @ecpg_raise(i32 %12, i32 %13, i32 %14, i32* null)
  store i32 0, i32* %3, align 4
  br label %73

16:                                               ; preds = %2
  %17 = load %struct.sqlca_t*, %struct.sqlca_t** %7, align 8
  %18 = call i32 @ecpg_init_sqlca(%struct.sqlca_t* %17)
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.descriptor* @ecpg_alloc(i32 40, i32 %19)
  store %struct.descriptor* %20, %struct.descriptor** %6, align 8
  %21 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %22 = icmp ne %struct.descriptor* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %73

24:                                               ; preds = %16
  %25 = call i32 (...) @get_descriptors()
  %26 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %27 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* %4, align 4
  %32 = call %struct.descriptor* @ecpg_alloc(i32 %30, i32 %31)
  %33 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %34 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %33, i32 0, i32 1
  store %struct.descriptor* %32, %struct.descriptor** %34, align 8
  %35 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %36 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %35, i32 0, i32 1
  %37 = load %struct.descriptor*, %struct.descriptor** %36, align 8
  %38 = icmp ne %struct.descriptor* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %24
  %40 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %41 = call i32 @ecpg_free(%struct.descriptor* %40)
  store i32 0, i32* %3, align 4
  br label %73

42:                                               ; preds = %24
  %43 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %44 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  %45 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %46 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %45, i32 0, i32 3
  store i32* null, i32** %46, align 8
  %47 = call i32 @PQmakeEmptyPGresult(i32* null, i32 0)
  %48 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %49 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %51 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %42
  %55 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %56 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %55, i32 0, i32 1
  %57 = load %struct.descriptor*, %struct.descriptor** %56, align 8
  %58 = call i32 @ecpg_free(%struct.descriptor* %57)
  %59 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %60 = call i32 @ecpg_free(%struct.descriptor* %59)
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @ECPG_OUT_OF_MEMORY, align 4
  %63 = load i32, i32* @ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, align 4
  %64 = call i32 @ecpg_raise(i32 %61, i32 %62, i32 %63, i32* null)
  store i32 0, i32* %3, align 4
  br label %73

65:                                               ; preds = %42
  %66 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %67 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %66, i32 0, i32 1
  %68 = load %struct.descriptor*, %struct.descriptor** %67, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @strcpy(%struct.descriptor* %68, i8* %69)
  %71 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %72 = call i32 @set_descriptors(%struct.descriptor* %71)
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %65, %54, %39, %23, %11
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.sqlca_t* @ECPGget_sqlca(...) #1

declare dso_local i32 @ecpg_raise(i32, i32, i32, i32*) #1

declare dso_local i32 @ecpg_init_sqlca(%struct.sqlca_t*) #1

declare dso_local %struct.descriptor* @ecpg_alloc(i32, i32) #1

declare dso_local i32 @get_descriptors(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ecpg_free(%struct.descriptor*) #1

declare dso_local i32 @PQmakeEmptyPGresult(i32*, i32) #1

declare dso_local i32 @strcpy(%struct.descriptor*, i8*) #1

declare dso_local i32 @set_descriptors(%struct.descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
