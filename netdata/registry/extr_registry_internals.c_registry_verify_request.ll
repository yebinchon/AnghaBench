; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry_internals.c_registry_verify_request.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry_internals.c_registry_verify_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GUID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"Registry Request Verification: invalid request! person: '%s', machine '%s', url '%s'\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"UNSET\00", align 1
@.str.2 = private unnamed_addr constant [89 x i8] c"Registry Request Verification: invalid person GUID, person: '%s', machine '%s', url '%s'\00", align 1
@.str.3 = private unnamed_addr constant [90 x i8] c"Registry Request Verification: invalid machine GUID, person: '%s', machine '%s', url '%s'\00", align 1
@.str.4 = private unnamed_addr constant [87 x i8] c"Registry Request Verification: machine not found, person: '%s', machine '%s', url '%s'\00", align 1
@.str.5 = private unnamed_addr constant [86 x i8] c"Registry Request Verification: person not found, person: '%s', machine '%s', url '%s'\00", align 1
@.str.6 = private unnamed_addr constant [94 x i8] c"Registry Request Verification: URL not found for person, person: '%s', machine '%s', url '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @registry_verify_request(i8* %0, i8* %1, i8* %2, i32** %3, i32** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32** %4, i32*** %11, align 8
  %19 = load i32, i32* @GUID_LEN, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i32, i32* @GUID_LEN, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %5
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i8*, i8** %8, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %71, label %48

48:                                               ; preds = %44, %41, %37, %34, %30, %5
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i8*, i8** %7, align 8
  br label %54

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i8* [ %52, %51 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %53 ]
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i8*, i8** %8, align 8
  br label %61

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i8* [ %59, %58 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %60 ]
  %63 = load i8*, i8** %9, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i8*, i8** %9, align 8
  br label %68

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i8* [ %66, %65 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %67 ]
  %70 = call i32 @info(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i8* %55, i8* %62, i8* %69)
  store i32* null, i32** %6, align 8
  store i32 1, i32* %15, align 4
  br label %136

71:                                               ; preds = %44
  %72 = load i8*, i8** %9, align 8
  %73 = call i8* @registry_fix_url(i8* %72, i32* null)
  store i8* %73, i8** %9, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @regenerate_guid(i8* %74, i8* %23)
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load i8*, i8** %7, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @info(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i8* %78, i8* %79, i8* %80)
  store i32* null, i32** %6, align 8
  store i32 1, i32* %15, align 4
  br label %136

82:                                               ; preds = %71
  store i8* %23, i8** %7, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @regenerate_guid(i8* %83, i8* %27)
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i8*, i8** %7, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @info(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0), i8* %87, i8* %88, i8* %89)
  store i32* null, i32** %6, align 8
  store i32 1, i32* %15, align 4
  br label %136

91:                                               ; preds = %82
  store i8* %27, i8** %8, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = call i32* @registry_machine_find(i8* %92)
  store i32* %93, i32** %16, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load i8*, i8** %7, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @info(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.4, i64 0, i64 0), i8* %97, i8* %98, i8* %99)
  store i32* null, i32** %6, align 8
  store i32 1, i32* %15, align 4
  br label %136

101:                                              ; preds = %91
  %102 = load i32**, i32*** %11, align 8
  %103 = icmp ne i32** %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32*, i32** %16, align 8
  %106 = load i32**, i32*** %11, align 8
  store i32* %105, i32** %106, align 8
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i8*, i8** %7, align 8
  %109 = call i32* @registry_person_find(i8* %108)
  store i32* %109, i32** %17, align 8
  %110 = load i32*, i32** %17, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load i8*, i8** %7, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = call i32 @info(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.5, i64 0, i64 0), i8* %113, i8* %114, i8* %115)
  store i32* null, i32** %6, align 8
  store i32 1, i32* %15, align 4
  br label %136

117:                                              ; preds = %107
  %118 = load i32**, i32*** %10, align 8
  %119 = icmp ne i32** %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32*, i32** %17, align 8
  %122 = load i32**, i32*** %10, align 8
  store i32* %121, i32** %122, align 8
  br label %123

123:                                              ; preds = %120, %117
  %124 = load i32*, i32** %17, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = call i32* @registry_person_url_index_find(i32* %124, i8* %125)
  store i32* %126, i32** %18, align 8
  %127 = load i32*, i32** %18, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %123
  %130 = load i8*, i8** %7, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = call i32 @info(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.6, i64 0, i64 0), i8* %130, i8* %131, i8* %132)
  store i32* null, i32** %6, align 8
  store i32 1, i32* %15, align 4
  br label %136

134:                                              ; preds = %123
  %135 = load i32*, i32** %18, align 8
  store i32* %135, i32** %6, align 8
  store i32 1, i32* %15, align 4
  br label %136

136:                                              ; preds = %134, %129, %112, %96, %86, %77, %68
  %137 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32*, i32** %6, align 8
  ret i32* %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @info(i8*, i8*, i8*, i8*) #2

declare dso_local i8* @registry_fix_url(i8*, i32*) #2

declare dso_local i32 @regenerate_guid(i8*, i8*) #2

declare dso_local i32* @registry_machine_find(i8*) #2

declare dso_local i32* @registry_person_find(i8*) #2

declare dso_local i32* @registry_person_url_index_find(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
