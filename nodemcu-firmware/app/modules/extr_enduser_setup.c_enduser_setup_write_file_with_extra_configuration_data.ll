; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_write_file_with_extra_configuration_data.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_write_file_with_extra_configuration_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keypairs_t = type { i32, i8** }

@.str = private unnamed_addr constant [37 x i8] c"enduser: write data from posted form\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"enduser: No extra configuration.\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"eus_params.lua\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Can't open file in write mode!\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"local p={}\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"p.\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"=\22\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"return p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @enduser_setup_write_file_with_extra_configuration_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enduser_setup_write_file_with_extra_configuration_data(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.keypairs_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @ENDUSER_SETUP_DEBUG(i8* %12)
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.keypairs_t* @enduser_setup_get_keypairs_from_form(i8* %14, i32 %15)
  store %struct.keypairs_t* %16, %struct.keypairs_t** %6, align 8
  %17 = load %struct.keypairs_t*, %struct.keypairs_t** %6, align 8
  %18 = icmp eq %struct.keypairs_t* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.keypairs_t*, %struct.keypairs_t** %6, align 8
  %21 = getelementptr inbounds %struct.keypairs_t, %struct.keypairs_t* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19, %2
  %25 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.keypairs_t*, %struct.keypairs_t** %6, align 8
  %27 = icmp ne %struct.keypairs_t* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.keypairs_t*, %struct.keypairs_t** %6, align 8
  %30 = call i32 @enduser_setup_free_keypairs(%struct.keypairs_t* %29)
  br label %31

31:                                               ; preds = %28, %24
  store i32 1, i32* %3, align 4
  br label %96

32:                                               ; preds = %19
  %33 = call i32 @vfs_open(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %38 = load %struct.keypairs_t*, %struct.keypairs_t** %6, align 8
  %39 = call i32 @enduser_setup_free_keypairs(%struct.keypairs_t* %38)
  store i32 1, i32* %3, align 4
  br label %96

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @vfs_write(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 11)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %86, %40
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.keypairs_t*, %struct.keypairs_t** %6, align 8
  %46 = getelementptr inbounds %struct.keypairs_t, %struct.keypairs_t* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %47, 2
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %89

50:                                               ; preds = %43
  %51 = load %struct.keypairs_t*, %struct.keypairs_t** %6, align 8
  %52 = getelementptr inbounds %struct.keypairs_t, %struct.keypairs_t* %51, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %9, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i64 @strlen(i8* %58)
  store i64 %59, i64* %10, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @vfs_write(i32 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %62 = load i32, i32* %7, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @vfs_write(i32 %62, i8* %63, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @vfs_write(i32 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 2)
  %69 = load %struct.keypairs_t*, %struct.keypairs_t** %6, align 8
  %70 = getelementptr inbounds %struct.keypairs_t, %struct.keypairs_t* %69, i32 0, i32 1
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %71, i64 %74
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %9, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = call i64 @strlen(i8* %77)
  store i64 %78, i64* %10, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i8*, i8** %9, align 8
  %81 = load i64, i64* %10, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @vfs_write(i32 %79, i8* %80, i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @vfs_write(i32 %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 2)
  br label %86

86:                                               ; preds = %50
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 2
  store i32 %88, i32* %8, align 4
  br label %43

89:                                               ; preds = %43
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @vfs_write(i32 %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 9)
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @vfs_close(i32 %92)
  %94 = load %struct.keypairs_t*, %struct.keypairs_t** %6, align 8
  %95 = call i32 @enduser_setup_free_keypairs(%struct.keypairs_t* %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %89, %36, %31
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @ENDUSER_SETUP_DEBUG(i8*) #1

declare dso_local %struct.keypairs_t* @enduser_setup_get_keypairs_from_form(i8*, i32) #1

declare dso_local i32 @enduser_setup_free_keypairs(%struct.keypairs_t*) #1

declare dso_local i32 @vfs_open(i8*, i8*) #1

declare dso_local i32 @vfs_write(i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @vfs_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
