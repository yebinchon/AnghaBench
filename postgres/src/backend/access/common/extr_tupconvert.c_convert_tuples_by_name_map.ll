; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_tupconvert.c_convert_tuples_by_name_map.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_tupconvert.c_convert_tuples_by_name_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i32, i64 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not convert row type\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"Attribute \22%s\22 of type %s does not match corresponding attribute of type %s.\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Attribute \22%s\22 of type %s does not exist in type %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @convert_tuples_by_name_map(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store i32 -1, i32* %9, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = call i64 @palloc0(i32 %25)
  %27 = inttoptr i64 %26 to i64*
  store i64* %27, i64** %5, align 8
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %144, %2
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %147

32:                                               ; preds = %28
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__* %33, i32 %34)
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %10, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %144

41:                                               ; preds = %32
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @NameStr(i32 %44)
  store i8* %45, i8** %11, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %12, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %117, %41
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %120

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %62, %56
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__* %64, i32 %65)
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %15, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %117

72:                                               ; preds = %63
  %73 = load i8*, i8** %11, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @NameStr(i32 %76)
  %78 = call i64 @strcmp(i8* %73, i8* %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %116

80:                                               ; preds = %72
  %81 = load i64, i64* %12, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load i64, i64* %13, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %86, %80
  %93 = load i32, i32* @ERROR, align 4
  %94 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %95 = call i32 @errcode(i32 %94)
  %96 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %97 = load i8*, i8** %11, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @format_type_be(i32 %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @format_type_be(i32 %104)
  %106 = call i32 @errdetail(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i8* %97, i32 %101, i32 %105)
  %107 = call i32 @ereport(i32 %93, i32 %106)
  br label %108

108:                                              ; preds = %92, %86
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64*, i64** %5, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  store i64 %111, i64* %115, align 8
  br label %120

116:                                              ; preds = %72
  br label %117

117:                                              ; preds = %116, %71
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %52

120:                                              ; preds = %108, %52
  %121 = load i64*, i64** %5, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %143

127:                                              ; preds = %120
  %128 = load i32, i32* @ERROR, align 4
  %129 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %130 = call i32 @errcode(i32 %129)
  %131 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %132 = load i8*, i8** %11, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @format_type_be(i32 %135)
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @format_type_be(i32 %139)
  %141 = call i32 @errdetail(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %132, i32 %136, i32 %140)
  %142 = call i32 @ereport(i32 %128, i32 %141)
  br label %143

143:                                              ; preds = %127, %120
  br label %144

144:                                              ; preds = %143, %40
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %28

147:                                              ; preds = %28
  %148 = load i64*, i64** %5, align 8
  ret i64* %148
}

declare dso_local i64 @palloc0(i32) #1

declare dso_local %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__*, i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i8*, i32, i32) #1

declare dso_local i32 @format_type_be(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
