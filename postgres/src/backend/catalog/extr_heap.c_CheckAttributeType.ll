; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_CheckAttributeType.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_CheckAttributeType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i32, i64 }

@TYPTYPE_PSEUDO = common dso_local global i8 0, align 1
@ANYARRAYOID = common dso_local global i64 0, align 8
@CHKATYPE_ANYARRAY = common dso_local global i32 0, align 4
@RECORDOID = common dso_local global i64 0, align 8
@CHKATYPE_ANYRECORD = common dso_local global i32 0, align 4
@RECORDARRAYOID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TABLE_DEFINITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"column \22%s\22 has pseudo-type %s\00", align 1
@TYPTYPE_DOMAIN = common dso_local global i8 0, align 1
@TYPTYPE_COMPOSITE = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"composite type %s cannot be made a member of itself\00", align 1
@AccessShareLock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"no collation was derived for column \22%s\22 with collatable type %s\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Use the COLLATE clause to set the collation explicitly.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckAttributeType(i8* %0, i64 %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i64, i64* %7, align 8
  %18 = call signext i8 @get_typtype(i64 %17)
  store i8 %18, i8* %11, align 1
  %19 = load i8, i8* %11, align 1
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* @TYPTYPE_PSEUDO, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %5
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @ANYARRAYOID, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @CHKATYPE_ANYARRAY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %60, label %33

33:                                               ; preds = %28, %24
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @RECORDOID, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @CHKATYPE_ANYRECORD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %37, %33
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @RECORDARRAYOID, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @CHKATYPE_ANYRECORD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %46, %42
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* @ERRCODE_INVALID_TABLE_DEFINITION, align 4
  %54 = call i32 @errcode(i32 %53)
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @format_type_be(i64 %56)
  %58 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %55, i32 %57)
  %59 = call i32 @ereport(i32 %52, i32 %58)
  br label %60

60:                                               ; preds = %51, %46, %37, %28
  br label %156

61:                                               ; preds = %5
  %62 = load i8, i8* %11, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @TYPTYPE_DOMAIN, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i8*, i8** %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i64 @getBaseType(i64 %69)
  %71 = load i64, i64* %8, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %10, align 4
  call void @CheckAttributeType(i8* %68, i64 %70, i64 %71, i32* %72, i32 %73)
  br label %155

74:                                               ; preds = %61
  %75 = load i8, i8* %11, align 1
  %76 = sext i8 %75 to i32
  %77 = load i8, i8* @TYPTYPE_COMPOSITE, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %142

80:                                               ; preds = %74
  %81 = load i32*, i32** %9, align 8
  %82 = load i64, i64* %7, align 8
  %83 = call i64 @list_member_oid(i32* %81, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load i32, i32* @ERROR, align 4
  %87 = load i32, i32* @ERRCODE_INVALID_TABLE_DEFINITION, align 4
  %88 = call i32 @errcode(i32 %87)
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @format_type_be(i64 %89)
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %92)
  %94 = call i32 @ereport(i32 %86, i32 %93)
  br label %95

95:                                               ; preds = %85, %80
  %96 = load i32*, i32** %9, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i32* @lappend_oid(i32* %96, i64 %97)
  store i32* %98, i32** %9, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @get_typ_typrelid(i64 %99)
  %101 = load i32, i32* @AccessShareLock, align 4
  %102 = call i32 @relation_open(i32 %100, i32 %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call %struct.TYPE_6__* @RelationGetDescr(i32 %103)
  store %struct.TYPE_6__* %104, %struct.TYPE_6__** %14, align 8
  store i32 0, i32* %15, align 4
  br label %105

105:                                              ; preds = %133, %95
  %106 = load i32, i32* %15, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %136

111:                                              ; preds = %105
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %113 = load i32, i32* %15, align 4
  %114 = call %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__* %112, i32 %113)
  store %struct.TYPE_7__* %114, %struct.TYPE_7__** %16, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %133

120:                                              ; preds = %111
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i8* @NameStr(i32 %123)
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* %10, align 4
  call void @CheckAttributeType(i8* %124, i64 %127, i64 %130, i32* %131, i32 %132)
  br label %133

133:                                              ; preds = %120, %119
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %15, align 4
  br label %105

136:                                              ; preds = %105
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* @AccessShareLock, align 4
  %139 = call i32 @relation_close(i32 %137, i32 %138)
  %140 = load i32*, i32** %9, align 8
  %141 = call i32* @list_delete_last(i32* %140)
  store i32* %141, i32** %9, align 8
  br label %154

142:                                              ; preds = %74
  %143 = load i64, i64* %7, align 8
  %144 = call i64 @get_element_type(i64 %143)
  store i64 %144, i64* %12, align 8
  %145 = call i64 @OidIsValid(i64 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load i8*, i8** %6, align 8
  %149 = load i64, i64* %12, align 8
  %150 = load i64, i64* %8, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = load i32, i32* %10, align 4
  call void @CheckAttributeType(i8* %148, i64 %149, i64 %150, i32* %151, i32 %152)
  br label %153

153:                                              ; preds = %147, %142
  br label %154

154:                                              ; preds = %153, %136
  br label %155

155:                                              ; preds = %154, %67
  br label %156

156:                                              ; preds = %155, %60
  %157 = load i64, i64* %8, align 8
  %158 = call i64 @OidIsValid(i64 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %174, label %160

160:                                              ; preds = %156
  %161 = load i64, i64* %7, align 8
  %162 = call i64 @type_is_collatable(i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %160
  %165 = load i32, i32* @ERROR, align 4
  %166 = load i32, i32* @ERRCODE_INVALID_TABLE_DEFINITION, align 4
  %167 = call i32 @errcode(i32 %166)
  %168 = load i8*, i8** %6, align 8
  %169 = load i64, i64* %7, align 8
  %170 = call i32 @format_type_be(i64 %169)
  %171 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* %168, i32 %170)
  %172 = call i32 @errhint(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %173 = call i32 @ereport(i32 %165, i32 %172)
  br label %174

174:                                              ; preds = %164, %160, %156
  ret void
}

declare dso_local signext i8 @get_typtype(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @format_type_be(i64) #1

declare dso_local i64 @getBaseType(i64) #1

declare dso_local i64 @list_member_oid(i32*, i64) #1

declare dso_local i32* @lappend_oid(i32*, i64) #1

declare dso_local i32 @relation_open(i32, i32) #1

declare dso_local i32 @get_typ_typrelid(i64) #1

declare dso_local %struct.TYPE_6__* @RelationGetDescr(i32) #1

declare dso_local %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__*, i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @relation_close(i32, i32) #1

declare dso_local i32* @list_delete_last(i32*) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i64 @get_element_type(i64) #1

declare dso_local i64 @type_is_collatable(i64) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
