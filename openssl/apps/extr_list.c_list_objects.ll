; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_list.c_list_objects.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_list.c_list_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_undef = common dso_local global i64 0, align 8
@bio_out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"# None-OID object: %s, %s\0A\00", align 1
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"ERROR: Memory allocation\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%s = %s, %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @list_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_objects() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = call i32 @OBJ_new_nid(i32 0)
  store i32 %9, i32* %1, align 4
  store i8* null, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %2, align 4
  br label %10

10:                                               ; preds = %84, %0
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* %1, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %87

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = call i32* @OBJ_nid2obj(i32 %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i8* @OBJ_nid2sn(i32 %17)
  store i8* %18, i8** %6, align 8
  %19 = load i32, i32* %2, align 4
  %20 = call i8* @OBJ_nid2ln(i32 %19)
  store i8* %20, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %21 = call i32 (...) @ERR_clear_error()
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @OBJ_obj2nid(i32* %22)
  %24 = load i64, i64* @NID_undef, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %84

27:                                               ; preds = %14
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @OBJ_obj2txt(i8* null, i32 0, i32* %28, i32 1)
  store i32 %29, i32* %8, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* @bio_out, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 (i32, i8*, ...) @BIO_printf(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34)
  br label %84

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %87

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i8* @OPENSSL_realloc(i8* %45, i32 %47)
  store i8* %48, i8** %3, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @bio_err, align 4
  %53 = call i32 (i32, i8*, ...) @BIO_printf(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %87

54:                                               ; preds = %44
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %40
  %58 = load i8*, i8** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @OBJ_obj2txt(i8* %58, i32 %59, i32* %60, i32 1)
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %87

64:                                               ; preds = %57
  %65 = load i8*, i8** %7, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load i8*, i8** %6, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i64 @strcmp(i8* %68, i8* %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67, %64
  %73 = load i32, i32* @bio_out, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 (i32, i8*, ...) @BIO_printf(i32 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %74, i8* %75)
  br label %83

77:                                               ; preds = %67
  %78 = load i32, i32* @bio_out, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 (i32, i8*, ...) @BIO_printf(i32 %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %79, i8* %80, i8* %81)
  br label %83

83:                                               ; preds = %77, %72
  br label %84

84:                                               ; preds = %83, %31, %26
  %85 = load i32, i32* %2, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %2, align 4
  br label %10

87:                                               ; preds = %63, %51, %39, %10
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 @OPENSSL_free(i8* %88)
  ret void
}

declare dso_local i32 @OBJ_new_nid(i32) #1

declare dso_local i32* @OBJ_nid2obj(i32) #1

declare dso_local i8* @OBJ_nid2sn(i32) #1

declare dso_local i8* @OBJ_nid2ln(i32) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i64 @OBJ_obj2nid(i32*) #1

declare dso_local i32 @OBJ_obj2txt(i8*, i32, i32*, i32) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i8* @OPENSSL_realloc(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
