; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_get_keypairs_from_form.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_get_keypairs_from_form.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keypairs_t = type { i8** }

@.str = private unnamed_addr constant [24 x i8] c"No keypair in form body\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Unable to decode parameter\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Too many keypairs!\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.keypairs_t* (i8*, i32)* @enduser_setup_get_keypairs_from_form to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.keypairs_t* @enduser_setup_get_keypairs_from_form(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.keypairs_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.keypairs_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @count_char_occurence(i8* %15, i8 signext 38)
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @count_char_occurence(i8* %18, i8 signext 61)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.keypairs_t* null, %struct.keypairs_t** %3, align 8
  br label %105

27:                                               ; preds = %22, %2
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.keypairs_t* @enduser_setup_alloc_keypairs(i32 %28)
  store %struct.keypairs_t* %29, %struct.keypairs_t** %8, align 8
  store i32 0, i32* %9, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = call i8* @malloc(i64 %32)
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i32 @os_bzero(i8* %34, i32 %36)
  %38 = load i8*, i8** %11, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @os_memcpy(i8* %38, i8* %39, i32 %40)
  %42 = load i8*, i8** %11, align 8
  %43 = call i8* @strtok(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %43, i8** %12, align 8
  store i8 61, i8* %13, align 1
  br label %44

44:                                               ; preds = %100, %27
  %45 = load i8*, i8** %12, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %101

47:                                               ; preds = %44
  %48 = load i8*, i8** %12, align 8
  %49 = call i64 @strlen(i8* %48)
  store i64 %49, i64* %14, align 8
  %50 = load i64, i64* %14, align 8
  %51 = add i64 %50, 1
  %52 = call i8* @malloc(i64 %51)
  %53 = load %struct.keypairs_t*, %struct.keypairs_t** %8, align 8
  %54 = getelementptr inbounds %struct.keypairs_t, %struct.keypairs_t* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  store i8* %52, i8** %58, align 8
  %59 = load %struct.keypairs_t*, %struct.keypairs_t** %8, align 8
  %60 = getelementptr inbounds %struct.keypairs_t, %struct.keypairs_t* %59, i32 0, i32 0
  %61 = load i8**, i8*** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* %14, align 8
  %69 = add i64 %68, 1
  %70 = call i32 @enduser_setup_http_urldecode(i8* %65, i8* %66, i64 %67, i64 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %47
  %74 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.keypairs_t*, %struct.keypairs_t** %8, align 8
  %76 = call i32 @enduser_setup_free_keypairs(%struct.keypairs_t* %75)
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @free(i8* %77)
  store %struct.keypairs_t* null, %struct.keypairs_t** %3, align 8
  br label %105

79:                                               ; preds = %47
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %6, align 4
  %84 = mul nsw i32 %83, 2
  %85 = icmp sgt i32 %82, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.keypairs_t*, %struct.keypairs_t** %8, align 8
  %89 = call i32 @enduser_setup_free_keypairs(%struct.keypairs_t* %88)
  %90 = load i8*, i8** %11, align 8
  %91 = call i32 @free(i8* %90)
  store %struct.keypairs_t* null, %struct.keypairs_t** %3, align 8
  br label %105

92:                                               ; preds = %79
  %93 = load i8, i8* %13, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 61
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %97, i8** %12, align 8
  store i8 38, i8* %13, align 1
  br label %100

98:                                               ; preds = %92
  %99 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %99, i8** %12, align 8
  store i8 61, i8* %13, align 1
  br label %100

100:                                              ; preds = %98, %96
  br label %44

101:                                              ; preds = %44
  %102 = load i8*, i8** %11, align 8
  %103 = call i32 @free(i8* %102)
  %104 = load %struct.keypairs_t*, %struct.keypairs_t** %8, align 8
  store %struct.keypairs_t* %104, %struct.keypairs_t** %3, align 8
  br label %105

105:                                              ; preds = %101, %86, %73, %25
  %106 = load %struct.keypairs_t*, %struct.keypairs_t** %3, align 8
  ret %struct.keypairs_t* %106
}

declare dso_local i32 @count_char_occurence(i8*, i8 signext) #1

declare dso_local i32 @ENDUSER_SETUP_DEBUG(i8*) #1

declare dso_local %struct.keypairs_t* @enduser_setup_alloc_keypairs(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @os_bzero(i8*, i32) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @enduser_setup_http_urldecode(i8*, i8*, i64, i64) #1

declare dso_local i32 @enduser_setup_free_keypairs(%struct.keypairs_t*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
