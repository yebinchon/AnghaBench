; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_nfs41_idmap_uid_to_name.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_nfs41_idmap_uid_to_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap_context = type { i32 }
%struct.idmap_lookup = type { i8*, i32, i32, i32, i32 }
%struct.idmap_user = type { i32 }

@ATTR_UID = common dso_local global i32 0, align 4
@CLASS_USER = common dso_local global i32 0, align 4
@TYPE_INT = common dso_local global i32 0, align 4
@uid_cmp = common dso_local global i32 0, align 4
@IDLVL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"--> nfs41_idmap_uid_to_name(%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"<-- nfs41_idmap_uid_to_name(%u) failed with %d\0A\00", align 1
@ERROR_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"username buffer overflow: '%s' > %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"<-- nfs41_idmap_uid_to_name(%u) returning '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs41_idmap_uid_to_name(%struct.idmap_context* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.idmap_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.idmap_lookup, align 8
  %11 = alloca %struct.idmap_user, align 4
  %12 = alloca i32, align 4
  store %struct.idmap_context* %0, %struct.idmap_context** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %6, align 8
  store i64 %13, i64* %9, align 8
  %14 = getelementptr inbounds %struct.idmap_lookup, %struct.idmap_lookup* %10, i32 0, i32 0
  %15 = load i32, i32* @ATTR_UID, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %14, align 8
  %18 = getelementptr inbounds %struct.idmap_lookup, %struct.idmap_lookup* %10, i32 0, i32 1
  %19 = load i32, i32* @CLASS_USER, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.idmap_lookup, %struct.idmap_lookup* %10, i32 0, i32 2
  %21 = load i32, i32* @TYPE_INT, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.idmap_lookup, %struct.idmap_lookup* %10, i32 0, i32 3
  %23 = load i32, i32* @uid_cmp, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.idmap_lookup, %struct.idmap_lookup* %10, i32 0, i32 4
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* @IDLVL, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i32 (i32, i8*, i64, ...) @dprintf(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i64, i64* %9, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = getelementptr inbounds %struct.idmap_lookup, %struct.idmap_lookup* %10, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  %31 = load %struct.idmap_context*, %struct.idmap_context** %5, align 8
  %32 = call i32 @idmap_lookup_user(%struct.idmap_context* %31, %struct.idmap_lookup* %10, %struct.idmap_user* %11)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %4
  %36 = load i32, i32* @IDLVL, align 4
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 (i32, i8*, i64, ...) @dprintf(i32 %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %37, i32 %38)
  br label %59

40:                                               ; preds = %4
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.idmap_user, %struct.idmap_user* %11, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @StringCchCopyA(i8* %41, i64 %42, i32 %44)
  %46 = call i64 @FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i32, i32* @ERROR_BUFFER_OVERFLOW, align 4
  store i32 %49, i32* %12, align 4
  %50 = getelementptr inbounds %struct.idmap_user, %struct.idmap_user* %11, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @eprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %51, i64 %52)
  br label %59

54:                                               ; preds = %40
  %55 = load i32, i32* @IDLVL, align 4
  %56 = load i64, i64* %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 (i32, i8*, i64, ...) @dprintf(i32 %55, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %56, i8* %57)
  br label %59

59:                                               ; preds = %54, %48, %35
  %60 = load i32, i32* %12, align 4
  ret i32 %60
}

declare dso_local i32 @dprintf(i32, i8*, i64, ...) #1

declare dso_local i32 @idmap_lookup_user(%struct.idmap_context*, %struct.idmap_lookup*, %struct.idmap_user*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @StringCchCopyA(i8*, i64, i32) #1

declare dso_local i32 @eprintf(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
