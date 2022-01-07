; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_aclmask.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_aclmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"null ACL\00", align 1
@ACLITEM_ALL_GOPTION_BITS = common dso_local global i32 0, align 4
@ACLMASK_ALL = common dso_local global i64 0, align 8
@ACL_ID_PUBLIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aclmask(i32* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @ERROR, align 4
  %23 = call i32 @elog(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %5
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @check_acl(i32* %25)
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %178

30:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @ACLITEM_ALL_GOPTION_BITS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i64 @has_privs_of_role(i64 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @ACLITEM_ALL_GOPTION_BITS, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %12, align 4
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @ACLMASK_ALL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %54, label %56

51:                                               ; preds = %40
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51, %47
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %6, align 4
  br label %178

56:                                               ; preds = %51, %47
  br label %57

57:                                               ; preds = %56, %35, %30
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @ACL_NUM(i32* %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = call %struct.TYPE_3__* @ACL_DAT(i32* %60)
  store %struct.TYPE_3__* %61, %struct.TYPE_3__** %14, align 8
  store i32 0, i32* %15, align 4
  br label %62

62:                                               ; preds = %104, %57
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %107

66:                                               ; preds = %62
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  store %struct.TYPE_3__* %70, %struct.TYPE_3__** %17, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ACL_ID_PUBLIC, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %66
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %103

82:                                               ; preds = %76, %66
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* %12, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %12, align 4
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* @ACLMASK_ALL, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %82
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %100, label %102

97:                                               ; preds = %82
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97, %93
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %6, align 4
  br label %178

102:                                              ; preds = %97, %93
  br label %103

103:                                              ; preds = %102, %76
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %15, align 4
  br label %62

107:                                              ; preds = %62
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %12, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  store i32 %111, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %112

112:                                              ; preds = %173, %107
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %16, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %176

116:                                              ; preds = %112
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  store %struct.TYPE_3__* %120, %struct.TYPE_3__** %18, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @ACL_ID_PUBLIC, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %132, label %126

126:                                              ; preds = %116
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %8, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %126, %116
  br label %173

133:                                              ; preds = %126
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %13, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %172

140:                                              ; preds = %133
  %141 = load i64, i64* %8, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i64 @has_privs_of_role(i64 %141, i64 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %172

147:                                              ; preds = %140
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = and i32 %150, %151
  %153 = load i32, i32* %12, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %12, align 4
  %155 = load i64, i64* %11, align 8
  %156 = load i64, i64* @ACLMASK_ALL, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %147
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %165, label %167

162:                                              ; preds = %147
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162, %158
  %166 = load i32, i32* %12, align 4
  store i32 %166, i32* %6, align 4
  br label %178

167:                                              ; preds = %162, %158
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %12, align 4
  %170 = xor i32 %169, -1
  %171 = and i32 %168, %170
  store i32 %171, i32* %13, align 4
  br label %172

172:                                              ; preds = %167, %140, %133
  br label %173

173:                                              ; preds = %172, %132
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %15, align 4
  br label %112

176:                                              ; preds = %112
  %177 = load i32, i32* %12, align 4
  store i32 %177, i32* %6, align 4
  br label %178

178:                                              ; preds = %176, %165, %100, %54, %29
  %179 = load i32, i32* %6, align 4
  ret i32 %179
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @check_acl(i32*) #1

declare dso_local i64 @has_privs_of_role(i64, i64) #1

declare dso_local i32 @ACL_NUM(i32*) #1

declare dso_local %struct.TYPE_3__* @ACL_DAT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
