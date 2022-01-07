; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_encnames.c_pg_char_to_encoding.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_encnames.c_pg_char_to_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@pg_encname_tbl = common dso_local global %struct.TYPE_4__* null, align 8
@NAMEDATALEN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_NAME_TOO_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"encoding name too long\00", align 1
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_char_to_encoding(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pg_encname_tbl, align 8
  %14 = call i32 @lengthof(%struct.TYPE_4__* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pg_encname_tbl, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %5, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 -1
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %6, align 8
  %21 = load i32, i32* @NAMEDATALEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load i8*, i8** %3, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %98

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = load i32, i32* @NAMEDATALEN, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* @ERROR, align 4
  %40 = load i32, i32* @ERRCODE_NAME_TOO_LONG, align 4
  %41 = call i32 @errcode(i32 %40)
  %42 = call i32 @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %43 = call i32 @ereport(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i8*, i8** %3, align 8
  %46 = call i8* @clean_encoding_name(i8* %45, i8* %24)
  store i8* %46, i8** %11, align 8
  br label %47

47:                                               ; preds = %96, %44
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = icmp uge %struct.TYPE_4__* %48, %49
  br i1 %50, label %51, label %97

51:                                               ; preds = %47
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = ptrtoint %struct.TYPE_4__* %53 to i64
  %56 = ptrtoint %struct.TYPE_4__* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 16
  %59 = ashr i64 %58, 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %59
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %7, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = sub nsw i32 %64, %70
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %51
  %75 = load i8*, i8** %11, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @strcmp(i8* %75, i8* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %98

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %51
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 -1
  store %struct.TYPE_4__* %92, %struct.TYPE_4__** %6, align 8
  br label %96

93:                                               ; preds = %87
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 1
  store %struct.TYPE_4__* %95, %struct.TYPE_4__** %5, align 8
  br label %96

96:                                               ; preds = %93, %90
  br label %47

97:                                               ; preds = %47
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %98

98:                                               ; preds = %97, %82, %32
  %99 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @lengthof(%struct.TYPE_4__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i8* @clean_encoding_name(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
