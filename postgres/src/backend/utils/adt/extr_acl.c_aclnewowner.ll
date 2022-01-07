; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_aclnewowner.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_aclnewowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }

@ACL_NO_RIGHTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @aclnewowner(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %13, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @check_acl(i32* %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @ACL_NUM(i32* %20)
  store i32 %21, i32* %17, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call %struct.TYPE_9__* @ACL_DAT(i32* %22)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %9, align 8
  %24 = load i32, i32* %17, align 4
  %25 = call i32* @allocacl(i32 %24)
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call %struct.TYPE_9__* @ACL_DAT(i32* %26)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %8, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %30 = load i32, i32* %17, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 16
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memcpy(%struct.TYPE_9__* %28, %struct.TYPE_9__* %29, i32 %33)
  store i32 0, i32* %14, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %10, align 8
  br label %36

36:                                               ; preds = %77, %3
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %17, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %82

40:                                               ; preds = %36
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %58

50:                                               ; preds = %40
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 1, i32* %13, align 4
  br label %57

57:                                               ; preds = %56, %50
  br label %58

58:                                               ; preds = %57, %46
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %76

68:                                               ; preds = %58
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 1, i32* %13, align 4
  br label %75

75:                                               ; preds = %74, %68
  br label %76

76:                                               ; preds = %75, %64
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 1
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %10, align 8
  br label %36

82:                                               ; preds = %36
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %188

85:                                               ; preds = %82
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %12, align 8
  br label %87

87:                                               ; preds = %174, %85
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %17, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %179

91:                                               ; preds = %87
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %93 = bitcast %struct.TYPE_9__* %92 to { i64, i64 }*
  %94 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %93, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @ACLITEM_GET_RIGHTS(i64 %95, i64 %97)
  %99 = load i32, i32* @ACL_NO_RIGHTS, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %174

102:                                              ; preds = %91
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i64 1
  store %struct.TYPE_9__* %106, %struct.TYPE_9__** %11, align 8
  br label %107

107:                                              ; preds = %159, %102
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %17, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %164

111:                                              ; preds = %107
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %113 = bitcast %struct.TYPE_9__* %112 to { i64, i64 }*
  %114 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %113, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @ACLITEM_GET_RIGHTS(i64 %115, i64 %117)
  %119 = load i32, i32* @ACL_NO_RIGHTS, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  br label %159

122:                                              ; preds = %111
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %125 = call i64 @aclitem_match(%struct.TYPE_9__* %123, %struct.TYPE_9__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %158

127:                                              ; preds = %122
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %130 = bitcast %struct.TYPE_9__* %129 to { i64, i64 }*
  %131 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %130, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @ACLITEM_GET_RIGHTS(i64 %132, i64 %134)
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %137 = bitcast %struct.TYPE_9__* %136 to { i64, i64 }*
  %138 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %137, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @ACLITEM_GET_RIGHTS(i64 %139, i64 %141)
  %143 = or i32 %135, %142
  %144 = bitcast %struct.TYPE_9__* %128 to { i64, i64 }*
  %145 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %144, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @ACLITEM_SET_RIGHTS(i64 %146, i64 %148, i32 %143)
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %151 = load i32, i32* @ACL_NO_RIGHTS, align 4
  %152 = bitcast %struct.TYPE_9__* %150 to { i64, i64 }*
  %153 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %152, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @ACLITEM_SET_RIGHTS(i64 %154, i64 %156, i32 %151)
  br label %158

158:                                              ; preds = %127, %122
  br label %159

159:                                              ; preds = %158, %121
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %15, align 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 1
  store %struct.TYPE_9__* %163, %struct.TYPE_9__** %11, align 8
  br label %107

164:                                              ; preds = %107
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i64 %167
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %170 = bitcast %struct.TYPE_9__* %168 to i8*
  %171 = bitcast %struct.TYPE_9__* %169 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %170, i8* align 8 %171, i64 16, i1 false)
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %14, align 4
  br label %174

174:                                              ; preds = %164, %101
  %175 = load i32, i32* %16, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %16, align 4
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 1
  store %struct.TYPE_9__* %178, %struct.TYPE_9__** %12, align 8
  br label %87

179:                                              ; preds = %87
  %180 = load i32, i32* %14, align 4
  %181 = load i32*, i32** %7, align 8
  %182 = call i32* @ARR_DIMS(i32* %181)
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  store i32 %180, i32* %183, align 4
  %184 = load i32*, i32** %7, align 8
  %185 = load i32, i32* %14, align 4
  %186 = call i32 @ACL_N_SIZE(i32 %185)
  %187 = call i32 @SET_VARSIZE(i32* %184, i32 %186)
  br label %188

188:                                              ; preds = %179, %82
  %189 = load i32*, i32** %7, align 8
  ret i32* %189
}

declare dso_local i32 @check_acl(i32*) #1

declare dso_local i32 @ACL_NUM(i32*) #1

declare dso_local %struct.TYPE_9__* @ACL_DAT(i32*) #1

declare dso_local i32* @allocacl(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @ACLITEM_GET_RIGHTS(i64, i64) #1

declare dso_local i64 @aclitem_match(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @ACLITEM_SET_RIGHTS(i64, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32 @SET_VARSIZE(i32*, i32) #1

declare dso_local i32 @ACL_N_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
