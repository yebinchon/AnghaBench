; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encryptdict.c_HPDF_EncryptDict_Prepare.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encryptdict.c_HPDF_EncryptDict_Prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c" HPDF_EncryptDict_Prepare\0A\00", align 1
@HPDF_PASSWD_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Filter\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Standard\00", align 1
@HPDF_ENCRYPT_R2 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@HPDF_ENCRYPT_R3 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"P\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HPDF_EncryptDict_Prepare(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %9, align 8
  %17 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @HPDF_EncryptDict_CreateID(%struct.TYPE_11__* %18, i32 %19, i32 %20)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %23 = call i32 @HPDF_Encrypt_CreateOwnerKey(%struct.TYPE_12__* %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %25 = call i32 @HPDF_Encrypt_CreateEncryptionKey(%struct.TYPE_12__* %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %27 = call i32 @HPDF_Encrypt_CreateUserKey(%struct.TYPE_12__* %26)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HPDF_PASSWD_LEN, align 4
  %35 = call i32 @HPDF_Binary_New(i32 %30, i32 %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %3
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @HPDF_Error_GetCode(i32 %41)
  store i64 %42, i64* %4, align 8
  br label %136

43:                                               ; preds = %3
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i64 @HPDF_Dict_Add(%struct.TYPE_11__* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* @HPDF_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %4, align 8
  br label %136

51:                                               ; preds = %43
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @HPDF_PASSWD_LEN, align 4
  %59 = call i32 @HPDF_Binary_New(i32 %54, i32 %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %51
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @HPDF_Error_GetCode(i32 %65)
  store i64 %66, i64* %4, align 8
  br label %136

67:                                               ; preds = %51
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i64 @HPDF_Dict_Add(%struct.TYPE_11__* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* @HPDF_OK, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i64, i64* %8, align 8
  store i64 %74, i64* %4, align 8
  br label %136

75:                                               ; preds = %67
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = call i64 @HPDF_Dict_AddName(%struct.TYPE_11__* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i64, i64* %8, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %8, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @HPDF_ENCRYPT_R2, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %75
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_11__* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %88 = load i64, i64* %8, align 8
  %89 = add nsw i64 %88, %87
  store i64 %89, i64* %8, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_11__* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %92 = load i64, i64* %8, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* %8, align 8
  br label %118

94:                                               ; preds = %75
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @HPDF_ENCRYPT_R3, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %94
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_11__* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %103 = load i64, i64* %8, align 8
  %104 = add nsw i64 %103, %102
  store i64 %104, i64* %8, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %106 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_11__* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %107 = load i64, i64* %8, align 8
  %108 = add nsw i64 %107, %106
  store i64 %108, i64* %8, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = mul nsw i32 %112, 8
  %114 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_11__* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  %115 = load i64, i64* %8, align 8
  %116 = add nsw i64 %115, %114
  store i64 %116, i64* %8, align 8
  br label %117

117:                                              ; preds = %100, %94
  br label %118

118:                                              ; preds = %117, %85
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_11__* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 %122)
  %124 = load i64, i64* %8, align 8
  %125 = add nsw i64 %124, %123
  store i64 %125, i64* %8, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* @HPDF_OK, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %118
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @HPDF_Error_GetCode(i32 %132)
  store i64 %133, i64* %4, align 8
  br label %136

134:                                              ; preds = %118
  %135 = load i64, i64* @HPDF_OK, align 8
  store i64 %135, i64* %4, align 8
  br label %136

136:                                              ; preds = %134, %129, %73, %62, %49, %38
  %137 = load i64, i64* %4, align 8
  ret i64 %137
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_EncryptDict_CreateID(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @HPDF_Encrypt_CreateOwnerKey(%struct.TYPE_12__*) #1

declare dso_local i32 @HPDF_Encrypt_CreateEncryptionKey(%struct.TYPE_12__*) #1

declare dso_local i32 @HPDF_Encrypt_CreateUserKey(%struct.TYPE_12__*) #1

declare dso_local i32 @HPDF_Binary_New(i32, i32, i32) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_11__*, i8*, i8*) #1

declare dso_local i64 @HPDF_Dict_AddNumber(%struct.TYPE_11__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
